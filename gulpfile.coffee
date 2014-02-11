gulp = require 'gulp'
less = require 'gulp-less'
concat = require 'gulp-concat'
gutil = require 'gulp-util'

src = ['bootstrap/less/variables.less', 'bootstrap/less/mixins.less', './typeahead.less']

gulp.task 'css', ->
  gulp.src src
  .pipe concat './typeahead.less'
  .pipe less().on('error', gutil.log)
  .pipe gulp.dest '.'

gulp.task 'default', ['css']