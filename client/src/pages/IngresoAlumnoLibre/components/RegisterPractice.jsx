import { useState } from "react"
import useData from "../../../hooks/useData"
import { Button, TextField, Box, FormControl, InputLabel, Select, MenuItem, Autocomplete, Snackbar, Alert } from "@mui/material"

const RegisterPractice = () => {
   const { equipments, programs, entryAlumnPractice, message } = useData()

	const [enrollment, setEnrollment] = useState('')
	const [equipment, setEquipment] = useState("")
   const [program, setProgram] = useState(null)
   
   const handleEntry = async () => {
		const response = await entryAlumnPractice({
			enrollment, equipment, program: program.id
		})
		if (response.status == 201) {
			setEnrollment('')
			setEquipment('')
			setProgram(null)
		}
   }

   // matricula
   // equipo
   // programa
   // laboratorio

   // teacher
   // equipo
   // prgrama
   // laboratorio
   

   
   return (
      <Box sx={{ mt: 2, display: "flex", flexDirection: "row" }}>
			<TextField
				id="outlined-basic"
				label="Matricula"
				variant="outlined"
				type="number"
				value={enrollment}
				onChange={({target}) => setEnrollment(target.value)}
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
				disabled={enrollment && equipment && program ? false : true}
				onClick={handleEntry}
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
				anchorOrigin={{ vertical: 'bottom', horizontal: 'right',}}
				open={message.open}
			>
				<Alert severity={message.severity}>
					{message.message}
				</Alert>
			</Snackbar>
		</Box>
   )
}

export default RegisterPractice
