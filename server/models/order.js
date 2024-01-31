const mongoose = require('mongoose');
const productmodel = require('./plantmodel');
const usermodel = require('./user');
const user = require('./user');

const orderschema = mongoose.Schema({
    products:[{
        
        product:productmodel,
        quantity:{
            type:Number,
            required:true,
        }
    }],
    userId:{
        required:true,
        type:String,
    },
    totalprice:{
        type:Number,
        required:true,

    },
    address:{
        type:String,
        required:true,
    },
    orderedat:{
        type:Number,
        required:true,

    },
    status:{
        type:Number,
        default:0,
    }
})
const Order = mongoose.model('Order',orderschema);
module.exports = Order;