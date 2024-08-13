import axios from 'axios';
import { useState } from "react";
import { useNavigate } from 'react-router-dom';

const URI = 'http://localhost:8000/blogs/';

const CreateBlog = () => {
    const [name, setName] = useState('');
    const [category, setCategory] = useState(''); // Inicializa como cadena vacía
    const [reference, setReference] = useState('');
    const [status, setStatus] = useState(false); // Inicializa como booleano
    const navigate = useNavigate();

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.post(URI, { name, category, reference, status });
            // Redirigir a la página de blogs después de la creación
            navigate('/');
        } catch (error) {
            console.error("Error creating blog:", error);
        }
    };

    return (
        <div>
            <h1>Create Blog</h1>
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
                <button type="submit" className="btn btn-primary">Create Blog</button>
            </form>
        </div>
    );
};

export default CreateBlog;
