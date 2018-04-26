//MovieApp is just a generic name for this project
var MovieApp = {

    movieGenres(data,genres){
        //filter the dataset and create an array of genres => one object for each genre in the db
        genres.forEach((genre, index)=>MovieApp.vm.genres.push({name :genre, movies: data.filter(movie=>movie.genre_name===genre)}));

    },
    vm : new Vue({
        delimiters : ["${","}"],
        el : "#app",
        data : {
            message : "Welcome to my first movie review app using vue.js. Making this in php is much eaiser.",

            genres : []
        },
        methods : {
        }
    })
}

//movies from tbl_movies arranged and displaye in genre rows on homepage (pulls all except horror because of kids)
MovieApp.movieGenres(appData.movies,["Drama","Family","Action","Comedy","Romance","Adventure","Crime","Historical","Fantasy"]);
