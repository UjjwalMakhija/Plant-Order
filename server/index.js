const express = require('express');
const mongoose = require('mongoose');
const mongooose = require('mongoose')
const authrouter = require('./routes/auth.js')


//app configuration 
const app = express();

const port = 3001;
const DB = "mongodb+srv://makhijaujjwal:oGrA0Nukw38jDr84@cluster0.p0ip3xy.mongodb.net/?retryWrites=true&w=majority"
//middleware configuration
app.use(express.json());
app.use(authrouter)
mongooose.connect(DB).then(() => console.log('connected successfully')).catch((e) => console.log(e));
// let itemslist =[
//     {
//         id:1,
//         name:"John",
//     }
// ]
// mongoose.connect(DB).then(()=>console.log("Connected ")).catch((e)=>console.log(e)) 
// app.get('/api/v1/items',(req,res)=>{
// return res.json(itemslist)
// })
// app.post('/api/v1/items',(req,res)=>{
//     let newitem={
//         id:itemslist.length+1,
//         name:req.body.name
//     }
//     itemslist.push(newitem);
//     res.status(201).json(newitem)
// })
// app.put('/api/v1/items',(req,res)=>{
//     let itemId = req.params.id;
//     let update = req.body;
//     let index = itemlist.findIndex(item=>item.id===itemId);
//     if(index !==-1){
//         itemlist[index]=update;
//         res.json(update);
//     }
//     else{
//         res.status(404).json({message:"Item not found"});
//     }
// })
// app.delete('api/v1/items/:id',(req,res)=>{
//     let itemId = req.params.id;
//     let index = itemlist.findIndex(item=>item.id===itemId);
//     if(index!==-1){
//         let delteditem = itemlist.splice(index,1);
//         res.json(deleteditem[0]);
//     }
//     else{
//         res.status(404).json({message:'Item not found'});
//     }
// })
app.listen(port, "0.0.0.0", () => console.log(`Connected port ${port}`))


//middle configuration