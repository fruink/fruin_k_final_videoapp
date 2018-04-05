# fruin_k_final_videoapp
Part 3 

# Purpose and video app overview #

Re-create started video app using Vue.js to run queries and update your views. Video app will allow user to filter through movie genres and click on desired movie to watch in a pop up lightbox feature that displays the movies ratings, description, socail media icons, and poster image of the movie. 

# App Requirements #

Part 3 - Final video app make using Vue.js

Vue.js is used to update the views folder files with data and event binding that will allow user to explore components and
client-side routing to watch movies in the app.
 - movie page displays each movies reviews, ratings, movie details
(director, year, genre, synopsis and etc... for the user to see.

User will have the ability to include their own rating or review of the film that connects to the database.
- The interactive elements are handled by Vue.js when a user adds a comment or a review/rating. 
View is updated with Vue.js methods and data nad the database will update with an
AJAX call using the fetch API with Vue.js.

# Overview of app features and functionality #
- Video app will have the feature to filter through categories and display all of the selections available (load and play a default
for each) by clicking on a thumbnail to play that video selected and show its details. 
(rating, reviews / starred reviews, as well as active social media icons for the user to interact with in the popup lightbox to watch a movie)

# Project Contains #

- Project files are minified using grunt such as using SASS, etc...

Folders:

- Views
--Layouts that contains the main_handlebars file
- content_handlebars
- error_handlebars
- home_handlebars
- movies_handlebars
- movies_kids_handlebars
 
 - Utils 
 - contains sqlConnect file
 
 -routes
 - The routes folder for video app navigation
 
 - content.js
 - index.js
 - movies.js
 - user.js
 
 - Public folder 
 - public folder contains all the styling, JavaScript functionality, videos, and images used in the app
 css folder
 - sass (minified code for best practices and learning techniques)
 - kidsProfile.css
 - main.css
 
 JS folder
 - prod folder
 
 - main.js
 
 - app.js is in root of project for functionality of the app 
 
All files are uploaded and ready to be viewed, video app design is simple and easy to navigate through for user(s)

created for school project and self-learning practice using and understanding Vue.js and handlebars for front-end work
