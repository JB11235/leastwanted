import './App.css';
import axios from "axios";
import Offenders from "./components/offenders";
import { useState, useEffect } from "react";

const API_URL = "http://localhost:3000/api/v1/offenders";

function getAPIData() {
  return axios.get(API_URL).then((response) => response.data)
}
function App() {
  const [offenders, setOffenders] = useState([]);

  useEffect(() => {
    let mounted = true;
    getAPIData().then((items) => {
      if (mounted) {
        setOffenders(items);
      }
  });
  return () => (mounted = false);
  }, []);  

  
  return (
    <div className="App">
      <h1>hello</h1>
      <Offenders offenders={offenders} />
    </div>
  );
}

export default App;
