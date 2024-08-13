import BlogModel from "../models/BlogModel.js";

// Metodos del crud

// Get all blogs

export const getAllBlogs = async (req, res) => {
  try {
    const blogs = await BlogModel.findAll();
    res.json(blogs);
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Get blog by id
export const getBlogById = async (req, res) => {
  try {
    const blog = await BlogModel.findByPk(req.params.id);
    res.json(blog);
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Create blog
export const createBlog = async (req, res) => {
  try {
    const blog = await BlogModel.create(req.body);
    console.log(blog);

    res.json({ message: "Correto papaagh" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Update blog
export const updateBlog = async (req, res) => {
  try {
    const blog = await BlogModel.findByPk(req.params.id);
    blog.update(req.body);
    res.json({ message: "Blog updated" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Delete blog
export const deleteBlog = async (req, res) => {
  try {
    const blog = await BlogModel.findByPk(req.params.id);
    console.log("Se Ejecuto :)");
    
    if (blog) {
      await blog.destroy();
      res.json({ message: "Blog deleted" });
    } else {
      res.status(404).json({ message: "Blog not found" });
    }
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const create100 = async (req, res) => {
  try {
    
  } catch (error) {
    
  }
}