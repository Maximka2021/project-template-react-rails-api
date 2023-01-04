import React, { useState } from "react";
import LogIn from "./LogIn";
import Home from "./Home";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

function App() {
  const [userData, setUserData] = useState({});
  console.log(userData)
  return (
    <Router>
      <div>
        <Switch>
          <Route exact path="/">
            <LogIn userData={userData} setUserData={setUserData} />
          </Route>

          <Route exact  path="/home">
            <Home userData={userData} />
          </Route>
        </Switch>
      </div>
    </Router>
  );
}

export default App;
