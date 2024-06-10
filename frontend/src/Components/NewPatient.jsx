import { useState } from 'react'

const NewPatient = () => {
    const [patientForm, setPatientForm] = useState({
        firstName: '',
        lastName: '',
        dob: '',
        gender: '',
        age: '',
        street: '',
        city: '',
        state:'',
        zipcode:'',
        social:'',
    })

    const {firstName, lastName, dob, gender, age, street, city, state, zipcode, social} = patientForm
    
    const handleChange = e => {
        const {name, value} = e.target
        if (name === 'dob') {
            const formattedDate = new Date(value).toISOString().split('T')[0];
            setPatientForm({ ...patientForm, [name]: formattedDate });
        } else {
            setPatientForm({...patientForm, [name]: value})
            console.log(patientForm)
        }
    }

    const handleSubmit = async e => {
        e.preventDefault()
        console.log('Form Data Before Submission:', patientForm)
        const formDataSnakeCase = Object.keys(patientForm).reduce((acc, key) => {
            const snakeCaseKey = key.replace(/([A-Z])/g, "_$1").toLowerCase();
            acc[snakeCaseKey] = patientForm[key];
            return acc;
          }, {});
          try {
            const response = await fetch('http://localhost:3000/patients', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(formDataSnakeCase)                
            })
            if (!response.ok) {
                throw new Error('Failed to submit form')
            }
        } catch (error) {
            console.log('This is the error', error)
        }
    }

    return (
        <>
            <h1>New Patient Form</h1>
            <form onSubmit={handleSubmit}>
                <div>
                    <label htmlFor="firstName">First Name:</label>
                    <input id="firstName" name="firstName" type="text" value={firstName} onChange={handleChange} />
                </div>

                <div>
                    <label htmlFor="lastName">Last Name:</label>
                    <input id="lastName" name="lastName" type="text" value={lastName} onChange={handleChange} />
                </div>
                <div>
                    <label htmlFor="dob">Date of Birth:</label>
                    <input id="dob" name="dob" type="date" value={dob} onChange={handleChange} />
                </div>
                <div>
                    <label htmlFor="gender">Gender:</label>
                    <select id="gender" name="gender" value={gender} onChange={handleChange}>
                        <option value="" disabled>--------</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                </div>
                <div>
                    <label htmlFor="age">Age:</label>
                    <input id="age" min="1" max="150" name="age" type="number" value={age} onChange={handleChange} />
                </div>
                <div>
                    <label htmlFor="street">Street Address:</label>
                    <input id="street" name="street" type="text" value={street} onChange={handleChange} />
                </div>
                <div>
                    <label htmlFor="city">City:</label>
                    <input id="city" name="city" type="text" value={city} onChange={handleChange} />
                </div>
                <div>
                    <label htmlFor="state">State:</label>
                    <input id="state" name="state" type="text" value={state} onChange={handleChange} />
                </div>
                <div>
                    <label htmlFor="zipcode">Zipcode:</label>
                    <input id="zipcode" name="zipcode" type="text" value={zipcode} onChange={handleChange} />
                </div>
                <div>
                    <label htmlFor="social">Social Security Number:</label>
                    <input id="social" name="social" type="text" value={social} onChange={handleChange} />
                </div>
                <button>Submit</button>
            </form>
        </>
    )
}

export default NewPatient