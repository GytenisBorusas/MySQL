// for (var i = 0; i < 500; i++) {
//     console.log("Hello world!")
// }




var { faker } = require('@faker-js/faker');
var mysql = require('mysql2');




// console.log(faker.internet.email());

// console.log(faker.date.past());


// function generateAddress() {
//     console.log(faker.location.streetAddress());
//     console.log(faker.location.city());
//     console.log(faker.location.state());
// }


// generateAddress();




var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'adminadmin',
    database: 'join_us'
  });


    // query
    // connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
    //     if (error) throw error;
    //     console.log('The solution is: ', results[0].solution);
    // });



    // SELECTING DATA
    // var q = 'SELECT COUNT(*) AS total FROM users';

    // connection.query(q, function (error, results, fields) {
    //     if (error) throw error;
    //     console.log(results[0].total);
    //     });


  //   // INSERTING DATA
  // var person = {
  //     email: faker.internet.email(),
  //     created_at: faker.date.past()
  // };
   
  // var end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
  //   if (err) throw err;
  //   console.log(result);
  // });


// INSERT 500 RANDOM USERS
var data = [];
for(var i = 0; i < 500; i++){
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}
 
var q = 'INSERT INTO users (email, created_at) VALUES ?';
 
connection.query(q, [data], function(err, result) {
  console.log(err);
  console.log(result);
});


connection.end();


































































































