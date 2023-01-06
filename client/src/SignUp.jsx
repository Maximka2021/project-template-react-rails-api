import { useState } from "react"
import { useHistory } from "react-router-dom"

function SignUp({ setUserData }){
    const [ newUsername, setNewUsername ] = useState('')
    const [ newEmail, setNewEmail ] = useState('')
    const [ newPassword, setNewPassword ] = useState('')
    const [ error, setError ] = useState('')

    const history = useHistory()
    const handleUsername = e => setNewUsername(e.target.value)
    const handleEmail = e => setNewEmail(e.target.value)
    const handlePassword = e => setNewPassword(e.target.value)

    function handleSignUp(){
        fetch('/signup', {
            method: "POST",
            headers:{
                "content-type":"application/json"
            },
            body: JSON.stringify({
                username: newUsername,
                email: newEmail,
                password: newPassword
            })
        })
        .then(r => r.json())
        .then(data => {
            if(data.id){
                setUserData(data)
                history.push("/home")
            }else if(data.error){
                setError(data.error)
            }
        })
    }

    return(
        <div>
            <p>{error}</p>
            <label for="new-username">Username: </label>
            <input type="text" className="new-username" onChange={handleUsername} />
            <label for="new-email">Email: </label>
            <input type="email" className="new-email" onChange={handleEmail} />
            <label for="new-password">Password: </label>
            <input type="password" className="new-password" onChange={handlePassword} />
        </div>
    )
}

export default SignUp


















































