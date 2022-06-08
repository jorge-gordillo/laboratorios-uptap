import { DataGrid as Data } from "@mui/x-data-grid"


const DataGrid = ({ columns, rows, sx }) => {
   return (
      <Data autoHeight  columns={columns} rows={rows} sx={sx} />
   )
}

export default DataGrid
