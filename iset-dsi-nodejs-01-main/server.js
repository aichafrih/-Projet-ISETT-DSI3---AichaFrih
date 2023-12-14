const express = require("express");
const app = express();
const port = 3000;
const path = require('path');
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'news'
});

connection.connect();
var hbs = require('express-hbs');


app.engine('hbs', hbs.express4({
  partialsDir: __dirname + '/views'
}));
app.set('view engine', 'hbs');
app.set('views', __dirname + '/views');



app.get("/", (req, res) => {
  const sql = 'SELECT * FROM news ORDER BY datepublication DESC';

  connection.query(sql, (error, results, fields) => {
    if (error) {
      console.error('Error fetching news: ' + error.stack);
      res.status(500).send('Internal Server Error');
      return;
    }
    res.render('home', { news: results });
  });
});


app.get("/add", (req, res) => {
  res.sendFile(path.join(__dirname, "views/add.html"));
});


app.get("/addnews", function(req, res) {
  var untitre = req.query.letitre;
  var unedesc = req.query.ladescription;
  if (!untitre || !unedesc) {
      res.send('<script>alert("Title and description are required!"); window.location="/add";</script>');
      return; 
  }
  var sql = "INSERT INTO news(titre, description) VALUES (?, ?)";

  connection.query(sql, [untitre, unedesc], function(error, results, fields) {
      if (error) {
          console.error("Error inserting data into the database:", error);
          res.status(500).send("Internal Server Error");
      } else {  
          res.redirect('/');
      }
  });
});



app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
