const mongoose = require('mongoose');

const ratings = mongoose.Schema({

    userId:{
        type:String,
        required:true,
    },


    rating:{
        type:Number,
        required:true,
    }
})

module.exports=ratings;