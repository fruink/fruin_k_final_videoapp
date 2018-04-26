//movies review and ratings for users to interact in app on the movies page
var express = require('express');
var connect = require('../utils/sqlConnect');
var bodyParser = require('body-parser');
var router = express.Router();
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({extended : false}));




//this function adds the review(s)
router.post('/', (req, res, next) => {




  //quick grab and pull from db for movies page


  //movies ratings and reviews (fetching them from the database &amp; displaying them on page for user(s) )
  connect.query(`INSERT INTO tbl_comments_post (comments_post_id, comments_post_auth, comments_post_copy, comments_post_date, comments_post_movie,
  comments_post_rating) VALUES (NULL, NULL, "${req.body.comment}", CURRENT_TIMESTAMP(), "${req.body.id}", "${req.body.rate}");`, (error, rows)=> {
    if (error) {
      throw error;
    } else {
      res.json(rows);
    }
  })
});


module.exports = router;
