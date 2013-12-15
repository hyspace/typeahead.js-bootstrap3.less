/*global module:false*/
module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    // Metadata.
    pkg: grunt.file.readJSON('package.json'),
    // Task configuration.
    clean:{
      css: ['typeahead.css'],
      temp: ['temp.less']
    },
    concat: {
      temp: {
        src: ['bootstrap/less/variables.less', 'bootstrap/less/mixins.less', 'typeahead.less'],
        dest: 'temp.less'
      }
    },
    less: {
      css: {
        options: {
          yuicompress: true,
          ieCompat: true,
          optimization: 3,
          syncImport: true
        },
        files: {
          'typeahead.css': 'temp.less'
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-less');

  // default task.
  grunt.registerTask('default', ['clean:css','concat','less','clean:temp']);

};