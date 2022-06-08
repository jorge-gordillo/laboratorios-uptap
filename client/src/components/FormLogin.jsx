import { IconButton, InputAdornment, TextField, OutlinedInput, FormControl, InputLabel } from "@mui/material"
import { Visibility, VisibilityOff, } from "@mui/icons-material";
import { useState } from "react";

const FormLogin = () => {
	const [user, setUser] = useState("")
	const [password, setPassword] = useState("")
   const [showPassword, setShowPassword] = useState(false)
   
	return (
      <form>
         <FormControl sx={{ m: 1, width: '25ch' }} variant='outlined'>
            <TextField
               id="user"
               label='User'
               variant="outlined"
               value={user}
               onChange={({ target }) => setUser(target.value)}
            />
         </FormControl>
         <FormControl sx={{ m: 1, width: '25ch' }} variant="outlined">
            <InputLabel htmlFor="outlined-adornment-password">Password</InputLabel>
            <OutlinedInput
               id="password"
               label="Contraseña"
               value={password}
               autoComplete='true'
               type={showPassword ? 'text' : 'password'}
               onChange={({ target }) => setPassword(target.value)}
               endAdornment={
                  <InputAdornment position='end'>
                     <IconButton
                        aria-label="toggle password visibility"
                        onClick={() => setShowPassword(!showPassword)}
                        onMouseDown={(e) => e.preventDefault()}
                        edge="end"
                     >
                        {showPassword ? <VisibilityOff/> : <Visibility /> }
                     </IconButton>
                  </InputAdornment>
               }
            />
         </FormControl>
		</form>
	);
};

export default FormLogin;
