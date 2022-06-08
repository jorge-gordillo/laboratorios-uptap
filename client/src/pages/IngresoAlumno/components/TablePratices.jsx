import { useMemo } from 'react'
import DataGrid from '../../../components/DataGrid'
import { Button, Snackbar, Alert } from "@mui/material"
import useData from '../../../hooks/useData'

const TablePratices = () => {
	const { alumnPractices, exitAlumnPractice, message } = useData()

	const handleExit = async (params) => {
		await exitAlumnPractice(params)
	}

	const columns = useMemo(() => [
		{ field: "enrollment", headerName: "Matricula" },
		{ field: "name", headerName: "Nombre", minWidth: 240 },
		{ field: "equipment", headerName: "Equipo", minWidth: 130, valueGetter: ({ row }) => row.equipment == 'Equipo propio' ? `${row.equipment}` : `${row.equipment.number}` },
		{ field: "program", headerName: "Programa", minWidth: 220, valueGetter: ({ row }) => `${row.program.name}` },
		{ field: "schedule", headerName: "Materia", minWidth: 220, valueGetter: ({ row }) => `${row.schedule.name}` },
		{ field: "entry_date", headerName: "Hora de Entrada", minWidth: 125 },
		{ field: "exit_date", headerName: "Hora de Salida", minWidth: 125 },
		{ field: "actions", headerName: 'Acciones', type: "actions", minWidth: 110,
			getActions: (params) => [
				<Button
					variant="contained"
					size="small"
					disabled={params.row.exit_date == null ? false : true}
					onClick={() => handleExit(params.row)}
				>
					Salir
				</Button>,
			],
		},
	]);
   
   return (
      <div style={{ display: 'flex' }}>
         <div style={{ flexGrow: 1 }}>
            <DataGrid
               sx={{ mt: 2, mr: 2 }}
               rows={alumnPractices ?? []}
               columns={columns}
            />
         </div>
			<Snackbar
				anchorOrigin={{ vertical: 'bottom', horizontal: 'right',}}
				open={message.open}
			>
				<Alert severity={message.severity}>
					{message.message}
				</Alert>
			</Snackbar>
      </div>
   )
}

export default TablePratices
