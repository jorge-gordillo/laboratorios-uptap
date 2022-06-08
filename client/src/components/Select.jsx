import { FormControl, InputLabel, Select as Selects, MenuItem } from "@mui/material"

const Select = ({ label, options, value, setValue }) => {
	return (
		<FormControl sx={{ ml: 2 }}>
         <InputLabel id={label+'-label'}>
            {label}
         </InputLabel>
			<Selects
				labelId={label+'-label'}
				value={value}
				label="Horario"
				onChange={({ target }) => setValue(target.value)}
         >
            {options.map(option => (
               <MenuItem value={option.id}>{option.name}</MenuItem>
            ))}
			</Selects>
		</FormControl>
	);
};

export default Select;
