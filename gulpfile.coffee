gulp = require 'gulp'
less = require 'gulp-less'
concat = require 'gulp-concat'
gutil = require 'gulp-util'
replace = require 'gulp-replace'

version = require('./bower.json').version

src = ['bootstrap/less/variables.less', 'bootstrap/less/mixins.less', './typeahead.less']

gulp.task 'version', ->
  gulp.src ['./typeahead.less']
  .pipe replace(/@version\s*\d+\.\d+\.\d+/g, '@version '+version)
  .pipe gulp.dest '.'

gulp.task 'css', ->
  gulp.src src
  .pipe concat './typeahead.less'
  .pipe less().on('error', gutil.log)
  .pipe gulp.dest '.'

gulp.task 'default', ['version', 'css']