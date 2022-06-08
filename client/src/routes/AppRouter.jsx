import { Routes, Route } from "react-router-dom"
import { routes } from '../helpers'

import AppLayout from "../components/layouts/AppLayout"

import IngresoProfesorPage from "../pages/IngresoProfesor"
import IngresoAlumnoPage from "../pages/IngresoAlumno"
import IngresoProfesorLibrePage from '../pages/IngresoProfesorLibre'
import IngresoAlumnoLibrePage from '../pages/IngresoAlumnoLibre'

import NotFoundPage from "../pages/NotFoundPage"

const AppRouter = () => {

   return (
      <Routes>
         <Route path='/' element={<AppLayout />}>

            <Route path={routes.practicas} element={<IngresoAlumnoPage />} />
            <Route path={routes.libre} element={<IngresoAlumnoLibrePage />} />

            <Route path={routes.docente} element={<IngresoProfesorPage />} />
            <Route path={routes.docenteLibre} element={<IngresoProfesorLibrePage />} />

         </Route>
         <Route path={routes.notFoundPage} element={<NotFoundPage />} />
      </Routes>
   )
}

export default AppRouter
