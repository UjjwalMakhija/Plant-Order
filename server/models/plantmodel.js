const mongoose = require('mongoose');
const rating = require('./rating')

const plantschema = mongoose.Schema({
    name:{
        required:true,
        type:String,
        trim:true,
        
    },
    category:{
        required:true,
        trim:true,
        type:String,
    },
    description:{
        type:String,
        required:true,
        trim:true,
    },
    quantity:{
        type:Number,
        required:true,
        default:1,
    },
    images:[{
        type:String,
        required:true,

    }],
    price:{
        type:Number,
        required:true
    },
    ratings:[rating]
    
})

const plant = mongoose.model('Plants',plantschema);
module.exports= {plant,plantschema};
