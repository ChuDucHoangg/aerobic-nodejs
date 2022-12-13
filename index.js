const express= require("express");
const app = express();
const PORT= process.env.PORT || 3950;
const mysql = require("mysql");

app.listen(PORT,function (){
    console.log("server is running...");
});
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});
const config ={
    host: '139.180.186.20',
    port:3306,
    user:'t2207a',
    password:'t2207a123',
    database:'t2207a',
    multipleStatements:true
};
const conn=mysql.createConnection(config);


app.get("/nhom6_class", function (req,res) {
    const sql = "select * from nhom6_class";
    conn.query(sql, function (err, data) {
        res.send(data)
    })
});
app.get("/nhom6_teacher", function (req,res) {
    const sql = "select * from nhom6_teacher";
    conn.query(sql, function (err, data) {
        res.send(data)
    })
});
app.get("/nhom6_course", function (req,res) {
    const sql = "select * from nhom6_course";
    conn.query(sql, function (err, data) {
        res.send(data)
    })
});
app.get("/nhom6_book", function (req,res) {
    const sql = "select * from nhom6_book";
    conn.query(sql, function (err, data) {
        res.send(data)
    })
});