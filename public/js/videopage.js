//movie review / rating on moives page

var moviesApp = {


  //movie review/rating display functionality

  //functionality to post review and rating (recieved help for this)
  addreviews(data){


    //push movie review/rating data and process it into vue.js
    data.forEach(review => moviesApp.vm.reviews.push(review));
  },



  //using vue for moviesApp
  vm : new Vue ({

    el : "#movie",

    delimiters : ["${","}"],

    data : {
      reviews : [],

      numrate : 7,

      review : ""

    },


    //moviesId is from db as it's pulling the movies id from tbl_movies (movies_id)
    methods : {
    addMoviereview() {
    let movieId = document.querySelector('.moviesId').textContent;

    //got help on this part
    fetch('/api', {
    method: 'post',
    headers : {
    'Accept' : 'Application/json, text-plain, */*',
    'Content-type' : 'application/json'
    },



    //review
    body : JSON.stringify({
    id : movieId,
    rate : this.numrate,
    comment : this.review
    })
    })

    .then((resp) => resp.JSON())
    .then((data) => {
    console.log(data);
    })

    .catch(function(error){
    console.log(error);
    });
    }
    }
  })
}

moviesApp.addreviews(appData.movies);
