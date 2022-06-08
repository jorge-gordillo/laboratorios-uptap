import { NavLink, useLocation } from "react-router-dom";

import {
	Box,
	Drawer,
	Toolbar,
	Button,
	ListItem,
} from "@mui/material";
import { ComputerRounded, AddBoxRounded } from "@mui/icons-material";

const drawerWidth = 210;



const DrawerApp = () => {
	const { pathname } = useLocation()

	const Alumno = (
		<>
			<ListItem disableGutters sx={{ display: "flex", mb: 0.5, py: 0, px: 2 }}>
				<NavLink to="/">
					<Button
						startIcon={<AddBoxRounded />}
						disableRipple
						sx={{
							backgroundColor:
								pathname === "/" && "rgba(255,255,255, 0.08)",
							borderRadius: 1,
							color: pathname === "/" ? "succes.main" : "neutral.500",
							fontWeight: pathname === "/" && "fontWeightBold",
							justifyContent: "flex-start",
							px: 3,
							textAlign: "left",
							textTransform: "none",
							width: "180px",
							"& .MuiButton-startIcon": {
								color: pathname === "/" ? "succes.main" : "neutral.500",
							},
							"&:hover": {
								backgroundColor: "rgba(55, 65, 81, 0.08)",
							},
						}}
					>
						<Box sx={{ flexGrow: 1 }}>Practica</Box>
					</Button>
				</NavLink>
			</ListItem>
	
			<ListItem disableGutters sx={{ display: "flex", mb: 0.5, py: 0, px: 2 }}>
				<NavLink to="/libre">
					<Button
						startIcon={<ComputerRounded />}
						disableRipple
						sx={{
							backgroundColor:
								pathname === "/libre" && "rgba(255,255,255, 0.08)",
							borderRadius: 1,
							color: pathname === "/libre" ? "succes.main" : "neutral.500",
							fontWeight: pathname === "/libre" && "fontWeightBold",
							justifyContent: "flex-start",
							px: 3,
							textAlign: "left",
							textTransform: "none",
							width: "180px",
							"& .MuiButton-startIcon": {
								color:
									pathname === "/libre" ? "succes.main" : "neutral.500",
							},
							"&:hover": {
								backgroundColor: "rgba(55, 65, 81, 0.08)",
							},
						}}
					>
						<Box sx={{ flexGrow: 1 }}>Libre</Box>
					</Button>
				</NavLink>
			</ListItem>
		</>
	)

	const Docente = (
		<>
			<ListItem disableGutters sx={{ display: "flex", mb: 0.5, py: 0, px: 2 }}>
				<NavLink to="/docente">
					<Button
						startIcon={<AddBoxRounded />}
						disableRipple
						sx={{
							backgroundColor:
								pathname === "/docente" && "rgba(255,255,255, 0.08)",
							borderRadius: 1,
							color: pathname === "/docente" ? "succes.main" : "neutral.500",
							fontWeight: pathname === "/docente" && "fontWeightBold",
							justifyContent: "flex-start",
							px: 3,
							textAlign: "left",
							textTransform: "none",
							width: "180px",
							"& .MuiButton-startIcon": {
								color: pathname === "/docente" ? "succes.main" : "neutral.500",
							},
							"&:hover": {
								backgroundColor: "rgba(55, 65, 81, 0.08)",
							},
						}}
					>
						<Box sx={{ flexGrow: 1 }}>Practica</Box>
					</Button>
				</NavLink>
			</ListItem>
	
			<ListItem disableGutters sx={{ display: "flex", mb: 0.5, py: 0, px: 2 }}>
				<NavLink to="/docente-libre">
					<Button
						startIcon={<ComputerRounded />}
						disableRipple
						sx={{
							backgroundColor:
								pathname === "/docente-libre" && "rgba(255,255,255, 0.08)",
							borderRadius: 1,
							color: pathname === "/docente-libre" ? "succes.main" : "neutral.500",
							fontWeight: pathname === "/docente-libre" && "fontWeightBold",
							justifyContent: "flex-start",
							px: 3,
							textAlign: "left",
							textTransform: "none",
							width: "180px",
							"& .MuiButton-startIcon": {
								color:
									pathname === "/docente-libre" ? "succes.main" : "neutral.500",
							},
							"&:hover": {
								backgroundColor: "rgba(55, 65, 81, 0.08)",
							},
						}}
					>
						<Box sx={{ flexGrow: 1 }}>Libre</Box>
					</Button>
				</NavLink>
			</ListItem>
		</>
	)

	return (
		<Drawer
			variant="permanent"
			sx={{
				display: "flex",
				flexDirection: "column",
				width: drawerWidth,
				height: "100%",
				flexShrink: 0,
				[`& .MuiDrawer-paper`]: {
					width: drawerWidth,
					boxSizing: "border-box",
				},
			}}
		>
			<Toolbar />
			<Box sx={{ display: "flex", flexDirection: "column", height: "100%" }}>
				<Box sx={{ flexGrow: 1, mt: 2 }}>
					{pathname === '/' || pathname === '/libre' ? (
						Alumno
					) :(
						Docente
					)}
				</Box>
			</Box>
		</Drawer>
	);
};

export default DrawerApp;
