import React, { useState } from "react";
import { useHistory } from "react-router-dom";

function Library({ userData }) {
    const history = useHistory()
    const [ gameData, setGameData ] = useState({})
    const [ gameDiv, setGameDiv ] = useState(false)
    const userGames = userData.games?.map((game) => {
        return <img className="game-image" onClick={() => handleClick(game)} src={game.img_url} />;
    })

  function handleClick(game){
    setGameData(game)
    setGameDiv(true)
  }

  function handleClose(){
    setGameDiv(false)
  }

  function handleLogOut(){
    fetch("/logout", {
        method: "DELETE"
    })
    history.push('/')
  }

  console.log(gameData)

  const userGamesTitle = userData.games?.map(game => {
    return <p onClick={() => handleClick(game)}  className="game-title">{game.title}</p>
  })
  return (
    <div className="main-library-holder">
        <div className="games-title-holder">
            <button onClick={handleLogOut}>Log Out</button>
            {userGamesTitle}
        </div>
        <div className="image-holder">
            {userGames}
        </div>
        <div className={gameDiv ? "slide-bar" : "hide"}>
            <img src={gameData.img_url} className="image-in-slide" /> 
            <br />
            <button className="play-button">PLAY</button>
            <button onClick={handleClose} className="close-button">X</button>
        </div>
    </div>
  );
}

export default Library;
