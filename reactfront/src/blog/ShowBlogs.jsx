import axios from 'axios';
import { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { FaEdit } from "react-icons/fa";
import { MdDelete } from "react-icons/md";

const URI = 'http://localhost:8000/blogs/';
const CATEGORY_COUNTS_URI = 'http://localhost:8000/blogs/counts/category';

const ShowBlogs = () => {
    const [blogs, setBlog] = useState([]);
    const [categoryCounts, setCategoryCounts] = useState([]);

    useEffect(() => {
        getBlogs();
        getCategoryCounts();
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

    // Get category counts
    const getCategoryCounts = async () => {
        try {
            const res = await axios.get(CATEGORY_COUNTS_URI);
            console.log("Category Counts:", res.data); // Verifica lo que devuelve la API
            setCategoryCounts(res.data);
        } catch (error) {
            console.error("Error fetching category counts:", error);
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
                <button className='btn btn-primary'>Crear Producto</button>
            </Link>
            <div className="row mt-3">
                <div className="col-12">
                <h3>Inventario de productos</h3>
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
                    <h3>Contador de categoria</h3>
                    <table className='table table-bordered' style={{ width: '100%', minWidth: '900px' }}>
                        <thead className="table-primary">
                            <tr>
                                <th scope='col'>Categoria</th>
                                <th scope='col'>Conteo</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                Array.isArray(categoryCounts) && categoryCounts.length > 0 ? (
                                    categoryCounts.map((categoryCount, index) => (
                                        <tr key={index}>
                                            <td>{categoryCount.category}</td>
                                            <td>{categoryCount.count}</td>
                                        </tr>
                                    ))
                                ) : (
                                    <tr>
                                        <td colSpan="2">No hay datos disponibles</td>
                                    </tr>
                                )
                            }
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    );
};

export default ShowBlogs;