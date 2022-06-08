import axios from 'axios'
const BASE_URL = 'https://arcane-beyond-98951.herokuapp.com/'

export default axios.create({
    baseURL: BASE_URL,
    headers: { 'Content-Type': 'application/json' }
})