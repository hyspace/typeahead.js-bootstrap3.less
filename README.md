typeahead.js-bootstrap3.less
===========================

Bootstrap3 style for [typeahead.js](https://github.com/twitter/typeahead.js) using [Bootstrap 3](https://github.com/twbs/bootstrap/) mixins and variables.

Based on the solution of [@kuroe](https://github.com/kuroe)

Tested on Chrome Mac OSX, with Bootstrap 3.0.2

### Introduction

This is a stylesheet for [typeahead.js](https://github.com/twitter/typeahead.js), which makes your "typeaheaded" input control looks same as [Bootstrap 3](https://github.com/twbs/bootstrap/)'s.

Using mixins and variables provided by Boostrap 3, This stylesheet is useful when you aplied custom theme to Boostrap for your site, because the change you made in variables and mixins will be aplied to your "typeaheaded" input control automatically.

**This stylesheet requires `mixins.less` and `variables.less` of Bootstrap 3. If you are not using Boostrap's mixins and variables in your site, you can use compiled css file with default colors and sizings of Boostrap instead.**

### How to use

#### if you have less source files of Bootstrap in your project:

import this file to your site's less stylesheet after `mixins.less` and `variables.less`

example:

    // variables and mixins of Bootstrap
    @import "variables.less";
    @import "mixins.less";

    /* other Bootstrap or custom modules */

    //typeahead
    @import "typeahead.less";

#### if you have less source files of Bootstrap in your project:

link compiled css file to your site.

### Thanks

This repo is here because this [Issue](https://github.com/twitter/typeahead.js/issues/378), and is based on the solution of [@kuroe](http://jsfiddle.net/kuroe/qrtua/14/)