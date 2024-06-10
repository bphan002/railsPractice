const Patient = ({first_name, last_name, age, dob, gender, street, city, state, zipcode}) => {
    return(
        <>
            <p>{first_name}</p>
            <p>{last_name}</p>
            <p>{age}</p>
            <p>{dob}</p>
            <p>{gender}</p>
            <p>{street}</p>
            <p>{city}</p>
            <p>{state}</p>
            <p>{zipcode}</p>
        </>
    )
}

export default Patient