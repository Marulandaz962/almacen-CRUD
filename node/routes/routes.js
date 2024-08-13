import express from 'express'
import { createBlog, deleteBlog, getAllBlogs, getBlogById, updateBlog,getCategoryCounts } from '../controllers/BlogController.js'

const router = express.Router()

router.get('/', getAllBlogs)

router.get('/:id', getBlogById)

router.post('/', createBlog)

router.put('/:id', updateBlog)

router.delete('/:id', deleteBlog)

router.get('/counts/category', getCategoryCounts);

export default router