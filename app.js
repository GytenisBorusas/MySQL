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

  connection.connect(err => {
    if (err) {
      console.error('Error connecting: ' + err.stack);
      return;
    }
    console.log('Connected as id ' + connection.threadId);
  




    // query
    connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
        if (error) throw error;
        console.log('The solution is: ', results[0].solution);

     var q = 'SELECT CURTIME() as time, CURDATE() as date, NOW() as now';
    connection.query(q, function (error, results, fields) {
        if (error) throw error;
        console.log(results[0].time);
        console.log(results[0].date);
        console.log(results[0].now);
        });


        
  
      console.log(results);
      // Close the connection
      connection.end(err => {
        if (err) {
          return console.log('error:' + err.message);
        }
        console.log('Closed the database connection.');
      });
    });
  });











//  SELECT CURTIME() as time, CURDATE() as date, NOW() as now;
































































































