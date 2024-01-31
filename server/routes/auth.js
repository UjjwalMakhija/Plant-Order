const express = require('express');
const jwt = require('jsonwebtoken');
const User = require('../models/user');
const btjs = require('bcryptjs');
const auth = require('../middlerwares/auth')
const authrouter  = express.Router()

authrouter.post('/api/signup',async (req,res)=>{
    try{
    const {name,email,password} = req.body;
    const existing = await User.findOne({email});
    if(existing){
        return res.status(400).json({message:"User with this email already exists"})
    }
    const hashedpass = await btjs.hash(password,8);
    let user = new User({
        email,
        password:hashedpass,
        name
    })
    user = await user.save();
    res.json(user);
}
catch(e){
    res.status(500).json({error:e.message})
}

})
authrouter.post('/api/signin',async (req,res)=>{
    try{
        const {email,password} = req.body;
        const existing = await User.findOne({email});
        if(!existing){
            res.status(400).json({message:"User with this email does not exists"})
        }
        let verify = await btjs.compare(password,existing.password)
        if(!verify){
            res.status(400).json({message:"Incorrect password"})
        }
        const token = jwt.sign({id:existing._id},"passwordkey");
        res.json({token,...existing._doc})

    }
    catch(e){
        res.status(500).json({erroe:e.message})
    }
})

// authrouter.post('/tokenisvalid',async(req,res)=>{
    
// })

module.exports =authrouter