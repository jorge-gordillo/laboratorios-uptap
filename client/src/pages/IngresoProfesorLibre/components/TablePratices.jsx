import { useMemo } from "react"
import useData from "../../../hooks/useData"
import DataGrid from '../../../components/DataGrid'
import { Button } from "@mui/material"

const TablePratices = () => {
   const { teacherPractices, exitTeacherPractice, loading } = useData()
	
	const handleExit = async (params) => {
	   await exitTeacherPractice(params)
   }

   const columns = useMemo(() => [
		{ field: "teacher", headerName: "Docente", minWidth: 240, valueGetter: ({ row }) => `${row.teacher.name}` },
      { field: "equipment", headerName: "Equipo", minWidth: 130, valueGetter: ({ row }) => row.equipment == 'Equipo propio' ? `${row.equipment}` : `${row.equipment.number}` },
		{ field: "program", headerName: "Programa", minWidth: 220, valueGetter: ({ row }) => `${row.program.name}` },
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
               rows={teacherPractices?.filter(item => item.schedule === null) ?? []}
					columns={columns}
					loading={loading}
            />
         </div>
      </div>
   )
}

export default TablePratices
