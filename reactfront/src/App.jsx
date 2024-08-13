import { useState } from 'react';
import reactLogo from './assets/react.svg';
import './App.css';
import { Routes, Route } from 'react-router-dom'; 

// Import components
import ShowBlogs from './blog/ShowBlogs';
import CreateBlog from './blog/CreateBlog';
import EditBlog from './blog/EditBlog';

function App() {
  const [count, setCount] = useState(0);

  return (
    <>
      <header>
        <div>
          <img src={reactLogo} className="logo react" alt="React logo" />
        </div>
      </header>
      <Routes>
        <Route path="/" element={<ShowBlogs />} />
        <Route path="/create" element={<CreateBlog />} />
        <Route path="/edit/:id" element={<EditBlog />} /> 
      </Routes>
    </>
  );
}

export default App;
