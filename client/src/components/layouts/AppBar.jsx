import { Toolbar, AppBar as Bar, Typography, Button, Box, ListItem } from "@mui/material";
import { NavLink, useLocation } from 'react-router-dom'


const AppBar = () => {
	const { pathname } = useLocation()
	return (
		<Bar position="fixed" sx={{ zIndex: (theme) => theme.zIndex.drawer + 1 }}>
			<Toolbar>
				<Typography variant="h6" noWrap component="div">
					Lab Computer UPTap
				</Typography>
				
				<Box sx={{ ml: 'auto', mr:2,  color: 'white', display: "flex", flexDirection: 'row', }}>
					<ListItem disableGutters sx={{ display: "flex",  px: 1 }}>
						<NavLink to="/">
							<Button
								size='large'
								disableRipple
								sx={{
									borderRadius: 1,
									color: pathname === "/" || pathname === "/libre" ? "#fba019" : "#c1cdd9",
									justifyContent: "flex-start",
									px: 3,
									textAlign: "left",
									textTransform: "none",
									width: "40px",
									"& .MuiButton-startIcon": {
										color: pathname === "/" || pathname === "/libre" ? "fba019" : "#c1cdd9",
									}
								}}
							>
								<Box sx={{ flexGrow: 1, fontWeight: 650 }}>Alumnos</Box>
							</Button>
						</NavLink>
					</ListItem>

					<ListItem disableGutters sx={{ display: "flex",  px: 1 }}>
						<NavLink to="/docente">
							<Button
								size='large'
								disableRipple
								sx={{
									borderRadius: 1,
									color: pathname === "/docente" || pathname === "/docente-libre" ? "#fba019" : "#c1cdd9",
									justifyContent: "flex-start",
									px: 3,
									textAlign: "left",
									textTransform: "none",
									width: "40px",
									"& .MuiButton-startIcon": {
										color: pathname === "/docente" || pathname === "/docente-libre" ? "fba019" : "c1cdd9",
									}
								}}
							>
								<Box sx={{ flexGrow: 1, fontWeight: 650 }}>Docentes</Box>
							</Button>
						</NavLink>
					</ListItem>
				</Box>
			</Toolbar>
		</Bar>
	);
};

export default AppBar;
