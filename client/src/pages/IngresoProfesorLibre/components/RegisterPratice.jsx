import { useState } from "react"
import useData from '../../../hooks/useData'
import { Button, TextField, Box, FormControl, InputLabel, Select, MenuItem, Autocomplete, Snackbar, Alert } from "@mui/material"

const RegisterPratice = () => {
   const { teachers, equipments, programs, entryTeacherPractice, message } = useData()

	const [teacher, setTeacher] = useState(null)
	const [equipment, setEquipment] = useState("")
   const [program, setProgram] = useState(null)
   
   const handleRegisterPratice = async () => {
		const response = await entryTeacherPractice({
			teacher:teacher.id, program: program.id, equipment
		})
		if (response.status == 201) {
			setTeacher(null)
         setEquipment('')
         setProgram('')
		}
   }

   return (
      <Box>		
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

            <FormControl sx={{ mx: 1.5, minWidth: 100 }}>
               <InputLabel id="equipo-label">Equipo</InputLabel>
               <Select
                  labelId="equipo-label"
                  value={equipment}
                  label="Equipo"
                  onChange={({ target }) => setEquipment(target.value)}
               >
                  <MenuItem value={"propio"}>
                     Equipo propio
                  </MenuItem>
                  {equipments && equipments?.map((equipment) => (
                     <MenuItem key={equipment.id} value={equipment.id}>
                        {"Equipo " + equipment.id}
                     </MenuItem>
                  ))}
               </Select>
            </FormControl>
            
            <Autocomplete
               disablePortal
               id="combo-box-demo"
               options={programs ?? []}
               value={program}
               isOptionEqualToValue={(option, value) => option.value === value.value}
               sx={{ width: 300 }}
               onChange={(event, newValue) => setProgram(newValue)}
               renderInput={(params) => (
                  <TextField value={program} key={params.id} {...params} label="Programa" />
               )}
            />

				<Button
					variant="contained"
					disabled={ teacher && equipment && program ? false : true}
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
