const mongoose= require('mongoose');
const { plantschema } = require('./plantmodel')
const userschema = mongoose.Schema({

    name:{
        required:true,
        type:String,
        trim:true,
    },
    email:{
        required:true,
        type:String,
        trim:true,
        validate:{
            validator:(value)=>{
                const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message:"Please enter a valid email address",
        }
    },
    password:{
        required:true,
        type:String,
        trim:true,
        validate:{
            validator:(value)=>{
                return value.length>6
            },
            message:"Password length should be at greater than 6 characters"
        }
    },
    address:{
        type:String,
        // required:true,
        default:''

    },
    type:{
        type:String,
        default:'user',
    },
    cart:[
        {
            product:plantschema,
            quantity:{
                type:Number,
                required:true, 
            }

        }
    ]
})

const user = mongoose.model('User',userschema)

module.exports =user