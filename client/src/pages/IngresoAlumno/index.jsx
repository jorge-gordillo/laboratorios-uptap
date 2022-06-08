import { Box } from "@mui/material";
import TablePratices from "./components/TablePratices"
import RegisterPratice from './components/RegisterPratice'

const IngresoAlumno = () => {
	
	return (
		<Box sx={{ ml:1.5, pt:1.5}}>
			<h2>Ingreso Alumno Practicas</h2>
			<RegisterPratice />
			<TablePratices/>
		</Box>
	)
}

export default IngresoAlumno
