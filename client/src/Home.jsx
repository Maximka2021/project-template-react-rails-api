import React from "react"
import { useState } from "react"
import { useHistory } from "react-router-dom"
function Home({ userData, setUserData, setIsLoggedIn, isLoggedIn }){
    const history = useHistory()
    console.log(userData)

    function handleLogOut(){
        fetch("/logout",{
            method: "DELETE"
        })
        history.push('/')
    }

    const gameList = userData.games.map((game) => {
        return(
            <div>
                <p>{game.title}</p>
                <img src={userData.img_url} />
            </div>
            
        )
    })

    return (
        <div>
            <h1>Welcome {userData.username}</h1>
            {gameList}
            <button onClick={handleLogOut}>Log Out</button>
        </div>
    )
}

export default Home