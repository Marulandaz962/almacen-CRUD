import express from 'express'
import { createBlog, deleteBlog, getAllBlogs, getBlogById, updateBlog } from '../controllers/BlogController.js'

const router = express.Router()

router.get('/', getAllBlogs)

router.get('/:id', getBlogById)

router.post('/', createBlog)

router.put('/:id', updateBlog)

router.put('/:id', deleteBlog)


export default router