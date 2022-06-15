import { useState } from "react"
import useData from '../../../hooks/useData'
import { Button, TextField, Box, FormControl, InputLabel, Select, MenuItem, Autocomplete, Snackbar, Alert } from "@mui/material"

const RegisterPratice = () => {
	const { teachers, schedule, entryTeacherPractice, message, scheduleActive } = useData()

	const [teacher, setTeacher] = useState(null)
	const [scheduleSelet, setScheduleSelet] = useState('')
	const [description, setDescription] = useState('')
	
	const handleRegisterPratice = async () => {
		const response = await entryTeacherPractice({
			description, schedule: scheduleSelet, teacher:teacher.id
		})
		if (response.status == 201) {
			setTeacher(null)
			setScheduleSelet('')
			setDescription('')
		}
	}

	return (
		<Box>
			{ scheduleActive[0] && (
				<Alert severity='warning' sx={{ width:'60%', mt:2 }} >
					Hay una materia en curso, no se puede registrar otro docente
				</Alert>
			) }
		
			<Box sx={{ mt: 2, display: "flex", flexDirection: "row" }}>
			
			

				<Autocomplete
					disablePortal
					id="combo-box-demo"
					options={teachers ?? []}
					value={teacher}
					isOptionEqualToValue={(option, value) => option.value === value.value}
					sx={{ width: 300 }}
					onChange={(event, newValue) => setTeacher(newValue)}
					renderInput={(params) => (
						<TextField key={params.id} {...params} label="Docente" />
					)}
				/>
				

				<FormControl sx={{ mx: 1.5, minWidth: 320 }}>
					<InputLabel id="materia-label">Horario</InputLabel>
					<Select
						labelId="materia-label"
						value={scheduleSelet}
						label="Materia"
						onChange={({ target }) => setScheduleSelet(target.value)}
					>
						<MenuItem value=''>
							---------------
						</MenuItem>
						{schedule && schedule?.map((schedule) => (
							<MenuItem key={schedule.id} value={schedule.id}>
								{schedule.subject} - {schedule.group}
							</MenuItem>
						))}
					</Select>
				</FormControl>
				
				<TextField
					sx={{ minWidth:320}}
					id="outlined-basic"
					label="Descripción de la Practica"
					variant="outlined"
					type="text"
					value={description}
					onChange={({target}) => setDescription(target.value)}
				/>

				<Button
					variant="contained"
					disabled={ teacher && scheduleSelet && description && !scheduleActive[0] ? false : true}
					onClick={handleRegisterPratice}
					sx={{
						mx: 1.5,
						width: 110,
						height: 45,
						my: "auto",
						fontWeight: 520,
					}}
				>
					Entrar
				</Button>

				<Snackbar
					anchorOrigin={{
						vertical: 'bottom',
						horizontal: 'right',
					}}
					open={message.open}

				>
					<Alert severity={message.severity}>
						{message.message}
					</Alert>
				</Snackbar>
         
			</Box>
		</Box>
   )
}

export default RegisterPratice
