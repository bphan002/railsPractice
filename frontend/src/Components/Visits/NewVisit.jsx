import { useState, useEffect} from 'react'
import VisitQuestion from './VisitQuestion'

const NewVisit = () => {
    const [ formValueQuestions, setFormValueQuestions] = useState([])
    const [ loading, setLoading ] = useState(true)
    
    useEffect(() => {
        const getQuestions = async () => {
            const response = await fetch(`http://localhost:3000/visits/new`)
            const responseJSON = await response.json()
            setFormValueQuestions(responseJSON)
            console.log(responseJSON)
            setLoading(false)
        }

        getQuestions()
    },[])

    return(
        loading ? "Loading" : (
            formValueQuestions.map((formValueQuestions, idx) => {
                return (
                    <VisitQuestion key={idx} {...formValueQuestions} />
                    
                )
            })
        )
    )
}

export default NewVisit