import { Routes, Route } from "react-router-dom"
import { ThemeProvider } from '@mui/material/styles'
import AppRouter from "./routes/AppRouter"
import theme from './styles/themeConfig'

function App() {
	return (
		<ThemeProvider theme={theme}>
			<AppRouter />
		</ThemeProvider>
	);
}

export default App;
