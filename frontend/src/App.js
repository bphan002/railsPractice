import './App.css';
import Patients from './Components/Patients';
import { BrowserRouter as Router, Routes, Route} from 'react-router-dom'
import NewVisit from './Components/Visits/NewVisit'
import NewPatient from './Components/NewPatient';
import Visit from './Components/Visits/Visit';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/visit" element={<Visit/>} />
        <Route path="/visits/new" element={<NewVisit/>} />
        <Route path="/patients" element={<Patients/>}/>
        <Route path="/patients/new" element={<NewPatient/>}/>
      </Routes>
    </Router>
  );
}

export default App;
