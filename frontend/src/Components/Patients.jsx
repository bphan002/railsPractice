import { useState, useEffect } from "react"
import Patient from "./Patient"

const Patients = () => {
    const [data, setData] = useState([])
    const [loading, setLoading] = useState(true)
    useEffect(() => {
        async function fetchPatients() {
            try {
                const response = await fetch(`http://localhost:3000/patients`)
                const data = await response.json()
                setData(data)
                setLoading(false)
            } catch (error) {
                console.error(`Could not get patients: ${error}`)
            }
        }
        fetchPatients()
    },[])
    console.log('data', data)
    return (
        loading ? <p>Loading</p> :
        <>
            <p>Patient's Info</p>
            {data.map((patient, index) => {
                return(
                    <Patient 
                        key = {index}
                        {...patient}
                    />
                )
            })
            }
        </>
    )
}

export default Patients