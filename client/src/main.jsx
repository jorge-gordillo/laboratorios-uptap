import React from 'react'
import ReactDOM from 'react-dom/client'
import { BrowserRouter } from "react-router-dom"
import { CssBaseline } from '@mui/material'
import DataProvider from './context/DataProvider'

import App from './App'
import './styles/index.css'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <DataProvider>
        <CssBaseline/>
        <App/>
      </DataProvider>
    </BrowserRouter>
  </React.StrictMode>
)
