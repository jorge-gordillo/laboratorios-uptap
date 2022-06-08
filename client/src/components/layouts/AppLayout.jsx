import { Outlet } from "react-router-dom";
import AppBar from "./AppBar";
import DrawerApp from "./Drawer";
import { Toolbar, Box, CssBaseline } from "@mui/material";

const AppLayout = () => {
	return (
		<Box sx={{ display: "flex" }}>
			<CssBaseline />
			<AppBar />
			<DrawerApp />
			<Box component="main" sx={{ flexGrow: 1, height: '100%' }}>
				<Toolbar />
				<Outlet />
			</Box>
		</Box>
	);
};

export default AppLayout;
