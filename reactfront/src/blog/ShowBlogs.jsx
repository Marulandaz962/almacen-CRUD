import axios from 'axios';
import { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { FaEdit } from "react-icons/fa";
import { MdDelete } from "react-icons/md";

const URI = 'http://localhost:8000/blogs/';

const ShowBlogs = () => {
    const [blogs, setBlog] = useState([]);
    
    useEffect(() => {
        getBlogs();
    }, []);
    
    // Show the blogs
    const getBlogs = async () => {
        try {
            const res = await axios.get(URI);
            console.log(res.data); // Verifica lo que devuelve la API
            setBlog(res.data);
        } catch (error) {
            console.error("Error fetching blogs:", error);
        }
    };

    const deleteBlog = async (id) => {
        try {
            await axios.delete(`${URI}${id}`);
            getBlogs(); // Actualiza la lista de blogs después de eliminar
        } catch (error) {
            console.error("Error deleting blog:", error);
        }
    };
    

    return (
        <div className="container-fluid">
            <Link to='/create'>
                <button className='btn btn-primary'>Create Blog</button>
            </Link>
            <div className="row mt-3"> 
                <div className="col-12"> 
                    <table className='table table-bordered' style={{ width: '100%', minWidth: '900px' }}>
                        <thead className="table-primary">
                            <tr>
                                <th scope='col'>#</th>
                                <th scope='col'>Nombre</th>
                                <th scope='col'>Categoria</th>
                                <th scope='col'>Referencia</th>
                                <th scope='col'>Estado</th>
                                <th scope='col'>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                blogs.map((blog, index) => (
                                    <tr key={blog.id}>
                                        <td>{index + 1}</td> 
                                        <td>{blog.name}</td> 
                                        <td>{blog.category}</td> 
                                        <td>{blog.reference}</td> 
                                        <td>{blog.status ? 'Active' : 'Inactive'}</td> 
                                        <td>
                                            <Link to={`/edit/${blog.id}`}>
                                                <button className='btn btn-info'><FaEdit /></button>
                                            </Link>
                                            <button className='btn btn-danger' onClick={() => deleteBlog(blog.id)}><MdDelete /></button>
                                        </td>
                                    </tr>
                                ))
                            }
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    );
};

export default ShowBlogs;
