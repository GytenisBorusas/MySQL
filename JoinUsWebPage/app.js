var express = require('express');
var mysql = require('mysql');
var bodyParser  = require("body-parser");
var app = express();

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'adminadmin',
  database: 'join_us'
});


app.get("/", function(req, res){
  // Find count of users in DB
  var q = "SELECT COUNT(*) AS count FROM users";
  connection.query(q, function(err, results){
      if(err) throw err;
      var count = results[0].count; 
      res.render("home", {count: count});
  });
});

// app.get("/joke", function(req, res){
//     var joke = "What do you call a dog that does magic tricks? A labracadabrador.";
//     res.send(joke);
// });

// app.get("/random_num", function(req, res){
//     var num = Math.floor((Math.random() * 10) + 1);
//     res.send("Your lucky number is " + num);
// });
  

app.post("/register", function(req, res){
  var person = {
      email: req.body.email
  };
  connection.query('INSERT INTO users SET ?', person, function(err, result) {
      if (err) throw err;
      res.redirect("/");
  });
});

app.listen(8080, function(){
  console.log("Server running on 8080!");
});









 























