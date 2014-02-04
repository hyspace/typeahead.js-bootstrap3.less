gulp = require 'gulp'
less = require 'gulp-less'
concat = require 'gulp-concat'

src = ['bootstrap/less/variables.less', 'bootstrap/less/mixins.less', 'typeahead.less']

gulp.task 'css', ->
  gulp.src src
  .pipe concat 'typeahead.less'
  .pipe less()
  .pipe gulp.dest '.'

gulp.task 'default', ['css']