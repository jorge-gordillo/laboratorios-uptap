import { Box } from "@mui/material"
import TablePratices from "./components/TablePratices"
import RegisterPratice from "./components/RegisterPratice"

const IngresoProfesor = () => {
   return (
      <Box sx={{ ml: 1.5, pt:1.5, mr:2}}>
         <h2>Ingreso Profesor Practicas</h2>
         <RegisterPratice />
         <TablePratices />
      </Box>
   )
}

export default IngresoProfesor
