import React, { useState } from "react"
import { Link } from 'react-router-dom'
import { useHistory } from 'react-router-dom'
import Home from "./Home";

function LogIn({userData, setUserData}){
    //LOG IN
    const [error, setError] = useState('')
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [isLoggedIn, setIsLoggedIn] = useState(false)
    //LOG IN

    const history = useHistory()
    const handleUsername = e => setUsername(e.target.value)
    const handlePassword = e => setPassword(e.target.value)


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
                setIsLoggedIn(true)
                history.push('/home')
                return <Home />
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
                        <Link to="/home" className="login-btn" onClick={handleLogIn}>Log In</Link>
                    </div>
                </div>
            </div>

        {/* <div className="sign-up-container">
            <input className="newUsername" onChange={handleNewUsername} value={newUsername} />
            <input className="newEmail" onChange={handleNewEmail} value={newEmail} />
            <input className="newPassword" onChange={handleNewPassword} value={newPassword} />

        </div> */}
    <Link to="/home">Click</Link>
        </div>
    )
}

export default LogIn