import { useState, useEffect } from "react";
import { createContext } from "react"
import serverApi from "../apis/server"

export const DataContext = createContext()

const initialState = {
	alumnPratices: [],
	equipments: [],
	programs: [],
	schedule: [],
	scheduleActive: [],
	teacherPratices: [],
	teachers: []
}

const DataProvider = ({ children }) => {
   const [data, setData] = useState(initialState)
	const [error, setError] = useState("")
	const [loading, setLoading] = useState(true)
	const [message, setMessage] = useState({})

	useEffect(() => {
		const controller = new AbortController()

		const fetchData = async () => {
			try {
				const res = await serverApi.get('/api/v1/data/', {
					signal: controller.signal
				})
				setData(res.data.data)
			} catch (err) {
				setError(err.message)
			} finally {
				setLoading(false)
			}
		};

		// call the function
		fetchData()

		// useEffect cleanup function
		return () => controller.abort()
	}, [])

	const entryAlumnPractice = async ({ enrollment, equipment, schedule, laboratory=1, program }) => {
		try {
			const response = await serverApi.post('/api/v1/alumns/practices/', {
				enrollment, equipment: equipment == 'propio' ? null : equipment, schedule, laboratory, program
			})
			if (response.status == 201) {
				setData((currentData) => ({
					...currentData,
					alumnPractices: [response.data.data, ...currentData.alumnPractices],
					equipments: currentData.equipments.filter(item => item.id != equipment)
				}))
				setMessage({
					message: response.data.message,
					severity: "success",
					open: true,
				})
				return response.data
			}
		} catch (error) {
			setMessage({
				message: error.response.data.message,
				severity: "warning",
				open: true,
			})
			return error.response.data
		} finally {
			setTimeout(() => { setMessage({}) }, 5000)
		}
	}

	const exitAlumnPractice = async (params) => {
		const response = await serverApi.put(`/api/v1/alumns/practices/${params.id}/`, {
			enrollment: params.enrollment,
			entry_date: params.entry_date,
			exit_date: new Date(),
			equipment: params.equipment == 'Equipo propio' ? null : params.equipment.id,
			schedule: params.schedule.id,
			laboratory: params.laboratory.id,
			program: params.program.id,
		})
		try {
			const date = new Date()
			const [hour, minutes, seconds] = [date.getHours(), date.getMinutes(), date.getSeconds()]
			setData((currentData) => ({
				...currentData,
				alumnPractices: currentData.alumnPractices.map(item => {
					if (item.id == params.id) {
						return {...item, exit_date: `${hour}:${minutes}:${seconds}`}
					} else {
						return item
					}
				}),
				equipments: params.equipment != 'Equipo propio' ? [params.equipment, ...currentData.equipments] : currentData.equipments
			}))
			setMessage({
				message: response.data.message,
				severity: "success",
				open: true,
			})
			return response.data
		} catch (error) {
			setMessage({
				message: error.response.data.message,
				severity: "warning",
				open: true,
			})
			return error.response.data
		} finally {
			setTimeout(() => { setMessage({}) }, 5000)
		}
	}

	const entryTeacherPractice = async ({ description, equipment = null, laboratory = 1, schedule, teacher }) => {
		try {
			const response = await serverApi.post('/api/v1/teachers/practices/', {
				description, equipment, laboratory, schedule, teacher
			})
			if (response.status == 201) {
				setData((currentData) => ({
					...currentData,
					scheduleActive: currentData.schedule.filter(item => item.id == schedule),
					teacherPractices: [response.data.data, ...currentData.teacherPractices]
				}))
				setMessage({
					message: response.data.message,
					severity: "success",
					open: true,
				})
				setTimeout(() => { setMessage({}) }, 5000)
			}
			return response.data
		} catch (error) {
			setMessage({
				message: error.response.data.message,
				severity: "warning",
				open: true,
			})
			setTimeout(() => { setMessage({}) }, 5000)
			return error.response.data
		}
		
		
		
	}
	const exitTeacherPractice = async (params) => {
		const response = await serverApi.put(`/api/v1/teachers/practices/${params.id}/`, {
			teacher: params.teacher.id,
			entry_date: params.entry_date,
			exit_date: new Date(),
			description: params.description,
			schedule: params.schedule.id,
			laboratory: params.laboratory.id,
			equipment: params.equipment == 'Equipo propio' ? null : params.equipment.id,
		})
		if (response.status == 200) {
			const date = new Date()
			const [hour, minutes, seconds] = [date.getHours(), date.getMinutes(), date.getSeconds()]
			setData((currentData) => ({
				...currentData,
				scheduleActive: [],
				teacherPractices: currentData.teacherPractices.map(item => {
					if (item.id == params.id) {
						return {...item, exit_date: `${hour}:${minutes}:${seconds}`}
					} else {
						return item
					}
				})
			}))
			setMessage({
				message: response.data.message,
				severity: "success",
				open: true,
			})
			setTimeout(() => { setMessage({}) }, 5000)
		}
		return response.data
		
	}



	const contextValue = {
		...data,
		message,
      error,
		loading,
		entryAlumnPractice,
		exitAlumnPractice,
		entryTeacherPractice,
		exitTeacherPractice,
	}

	return (
      <DataContext.Provider value={contextValue}>
         {loading ? (
            <p>Cargando...</p>
			) : (
				children
         )}
		</DataContext.Provider>
	)
}

export default DataProvider