// import db conection
import db from '../database/db.js';

// import DataTypes from sequelize 
import { DataTypes } from 'sequelize';


// define model



const BlogModel = db.define( 'blogs', {
    name: {type: DataTypes.STRING},
    category: {type: DataTypes.STRING},
    reference: {type: DataTypes.INTEGER},
    status: {type: DataTypes.BOOLEAN},
    
})

export default BlogModel;
