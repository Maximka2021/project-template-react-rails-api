import React, { useState } from "react"
import Home from "./Home";

function LogIn({userData, setUserData}){
    const [error, setError] = useState('')
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [isLoggedIn, setIsLoggedIn] = useState(false)

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
            }else if(data.error){
                setError(data.error)
            }
        })
    }

    return(
        <div className="login-holder">
            <p className="login-text">Log In</p>
            <div className="login-container">
                <div className={isLoggedIn ? "hide" : "show"}>
                    <p className="error">{error}</p>
                    <label for="username" style={{color:"#AFAFAF"}}>Username: </label>
                    <br></br>
                    <input className="username" onChange={handleUsername} value={username}/>
                    <br></br>
                    <label for="password" style={{color:"#AFAFAF"}}>Password: </label>
                    <br></br>
                    <input className="password" type="password" onChange={handlePassword} value={password}/>
                    <br></br>
                    <div className="button-holder">
                        <button className="login-btn" onClick={handleLogIn}>Log In</button>
                    </div>
                </div>
                <div className={isLoggedIn ? "show" : "hide"}>
                    <Home 
                        userData={userData} 
                        setUserData={setUserData} 
                        setIsLoggedIn={setIsLoggedIn}
                        isLoggedIn={isLoggedIn}
                        />
                </div>
            </div>
        </div>
    )
}

export default LogIn