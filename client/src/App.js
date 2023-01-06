import React, { useEffect, useState } from "react";
import LogIn from "./LogIn";
import SignUp from "./SignUp";
import Library from "./Library"
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

function App() {
  useEffect(() => {
    fetch('/me')
    .then(r => {
      if(r.ok){
        r.json()
        .then(data => {
          setUserData(data)
        })
      }
    })
  }, [])

  const [userData, setUserData] = useState({});
  return (
    <Router>
      <div>
        <Switch>
          <Route exact path="/">
            <LogIn userData={userData} setUserData={setUserData} />
          </Route>  

          <Route exact path="/signup">
            <SignUp setUserData={setUserData}/>
          </Route>

          <Route exact path="/library">
            <Library userData={userData}/>
          </Route>
        </Switch>
      </div>
    </Router>
  );
}

export default App;
