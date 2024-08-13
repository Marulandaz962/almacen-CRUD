import axios from 'axios';
import { useState, useEffect } from "react";
import { useNavigate, useParams } from 'react-router-dom';

const URI = 'http://localhost:8000/blogs/';

const EditBlog = () => {
    const [name, setName] = useState('');
    const [category, setCategory] = useState('');
    const [reference, setReference] = useState('');
    const [status, setStatus] = useState(false);
    const { id } = useParams(); // Obtiene el ID del blog desde los parámetros de la URL
    const navigate = useNavigate();

    useEffect(() => {
        const fetchBlog = async () => {
            try {
                const res = await axios.get(`${URI}${id}`);
                const blog = res.data;
                setName(blog.name);
                setCategory(blog.category);
                setReference(blog.reference);
                setStatus(blog.status);
            } catch (error) {
                console.error("Error fetching blog:", error);
            }
        };

        fetchBlog();
    }, [id]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.put(`${URI}${id}`, { name, category, reference, status });
            navigate('/');
        } catch (error) {
            console.error("Error updating blog:", error);
        }
    };

    return (
        <div>
            <h1>Edit Blog</h1>
            <form onSubmit={handleSubmit}>
                <div className="mb-3">
                    <label htmlFor="name" className="form-label">Name</label>
                    <input
                        type="text"
                        id="name"
                        className="form-control"
                        value={name}
                        onChange={(e) => setName(e.target.value)}
                        required
                    />
                </div>
                <div className="mb-3">
                    <label htmlFor="category" className="form-label">Category</label>
                    <select
                        id="category"
                        className="form-control"
                        value={category}
                        onChange={(e) => setCategory(e.target.value)}
                        required
                    >
                        <option value="">Select a category</option>
                        <option value="Tecnología">Tecnología</option>
                        <option value="Electrodomésticos">Electrodomésticos</option>
                    </select>
                </div>
                <div className="mb-3">
                    <label htmlFor="reference" className="form-label">Reference</label>
                    <input
                        type="number"
                        id="reference"
                        className="form-control"
                        value={reference}
                        onChange={(e) => setReference(e.target.value)}
                        required
                    />
                </div>
                <div className="mb-3 form-check">
                    <input
                        type="checkbox"
                        id="status"
                        className="form-check-input"
                        checked={status}
                        onChange={(e) => setStatus(e.target.checked)}
                    />
                    <label htmlFor="status" className="form-check-label">Active</label>
                </div>
                <button type="submit" className="btn btn-primary">Update Blog</button>
            </form>
        </div>
    );
};

export default EditBlog;
