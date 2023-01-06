import React, { useState } from "react"
import { useHistory } from 'react-router-dom'

function LogIn({userData, setUserData}){

    const [error, setError] = useState('')
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')

    const history = useHistory()
    const handleUsername = e => setUsername(e.target.value)
    const handlePassword = e => setPassword(e.target.value)

    function handleSignUp(){
        history.push('/signup')
    }

    function handleLogIn(e){
        e.preventDefault()
        fetch('/login', {
            method: "POST",
            headers: {
                "content-type":"application/json"
            },
            body: JSON.stringify({
                username: username,
                password: password
            })
        })
        .then(r => r.json())
        .then(data => {
            if(data.id){
                setError('')
                setUserData(data)
                history.push('/library')
            }else if(data.error){
                setError(data.error)    
            }
        })
    }

    return(
        <div className="main-holder">
            <div className="login-container">
                <div>
                    <p className="error">{error}</p>
                    <label for="username" style={{color:"#AFAFAF"}}>Username: </label>
                    <br></br>
                    <input className="username" onChange={handleUsername} value={username}/>
                    <br></br>
                    <label for="password" style={{color:"#AFAFAF"}}>Password: </label>
                    <input className="password" type="password" onChange={handlePassword} value={password}/>
                    <div className="button-holder">
                        <button className="login-btn" onClick={handleLogIn}>Log In</button>
                        <br></br>
                        <button className="signup-btn" onClick={handleSignUp}>Sign Up Instead</button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default LogIn