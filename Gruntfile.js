module.exports = function(grunt) {
 
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
      uglify: {
       
        my_target: {
          files: {
            'public/dist/main.min.js': ['public/javascripts/main.js'],
            'public/dist/videopage.min.js': ['public/javascripts/videopage.js']
          }
        }
      },

      watch: {
        sass: {
          files: ['sass/*.scss'],
          tasks: ['sass']
        }
      },

      sass: {
        dist: {
          options: {
            style: 'compressed'
          },

          files: {
            'public/css/app.css':'sass/master.scss'
          }
        }
      }
  });


  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-uglify-es');

  grunt.registerTask('default', ['sass', 'uglify']);
  grunt.registerTask('watchFiles', ['watch', 'sass']);
};
