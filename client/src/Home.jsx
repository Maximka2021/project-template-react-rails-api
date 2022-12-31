import React from "react"
import { useState } from "react"
function Home({ userData, setUserData, setIsLoggedIn, isLoggedIn }){

    const [userGames, setUserGames] = useState({})

    function handleLogOut(){
        setUserData({})
        fetch("/logout",{
            method: "DELETE"
        })
        .then(setIsLoggedIn(false))
    }
    
    if(isLoggedIn){
        window.$games = userData.games.map((game) => {
            return (
                <p>{game.title}</p>
            )
        })
    }

    return (
        <div>
            <h1>Welcome {userData.username}</h1>
            <button onClick={handleLogOut}>Log Out</button>
            {window.$games}
        </div>
    )
}

export default Home