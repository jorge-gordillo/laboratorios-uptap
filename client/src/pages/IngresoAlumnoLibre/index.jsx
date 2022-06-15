import { Box } from "@mui/material"
import TablePratices from "./components/TablePratices"
import RegisterPractice from "./components/RegisterPractice"

const IngresoAlumnoLibre = () => {
   return (
      <Box sx={{ ml:1.5, pt:1.5}}>
         <h2>Ingreso Alumno Libre</h2>
         <RegisterPractice />
         <TablePratices />
      </Box>
   )
}

export default IngresoAlumnoLibre
