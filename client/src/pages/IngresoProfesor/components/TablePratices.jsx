import { useMemo } from "react"
import useData from "../../../hooks/useData"
import DataGrid from '../../../components/DataGrid'
import { Button } from "@mui/material"

const TablePratices = () => {
	const { teacherPractices, exitTeacherPractice, message, loading } = useData()
	
	const handleExit = async (params) => {
	 await exitTeacherPractice(params)
	}

   const columns = useMemo(() => [
		{ field: "teacher", headerName: "Docente", minWidth: 240, valueGetter: ({ row }) => `${row.teacher.name}` },
		{ field: "description", headerName: "Descripción", minWidth: 280 },
		{ field: "group", headerName: "Grupo", minWidth: 150 },
		{ field: "subject", headerName: "Materia", minWidth: 250, valueGetter: ({ row }) => `${row.schedule.subject}` },
		{ field: "entry_date", headerName: "Hora de Entrada", minWidth: 120 },
		{ field: "exit_date", headerName: "Hora de Salida", minWidth: 120 },
		{ field: "actions", headerName: 'Acciones', type: "actions",
			getActions: (params) => [
				<Button
					variant="contained"
					size="small"
					disabled={params.row.exit_date == null ? false : true}
					onClick={() => handleExit(params.row)}
				>
					Salir
				</Button>,
			]
		}
	])

   return (
      <div style={{ display: 'flex' }}>
         <div style={{ flexGrow: 1 }}>
            <DataGrid
               sx={{ mt: 2, mr:2 }}
               rows={teacherPractices ?? []}
					columns={columns}
					loading={loading}
            />
         </div>
      </div>
   )
}

export default TablePratices
