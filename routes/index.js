var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

//Get movies
router.get('/movie', function(req, res, next) {
  req.pool.getConnection(function(error,connection){
    if (error){
      console.log(error);
      res.sendStatus(403);
      return;
    }
    var query=`SELECT title, movie_date, movie_time FROM movie;`
    connection.query(query, function(error, rows, fields){
      connection.release();
      if (error){
        console.log(error);
        res.sendStatus(401);
        return;
      }
      res.json(rows);
    });
  });
});

module.exports = router;
