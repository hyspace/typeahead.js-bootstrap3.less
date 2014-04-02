# typeahead.js-bootstrap3.less

[![Bower version](https://badge.fury.io/bo/typeahead.js-bootstrap3.less.png)](http://badge.fury.io/bo/typeahead.js-bootstrap3.less)
[![Build Status](https://travis-ci.org/hyspace/typeahead.js-bootstrap3.less.png?branch=develop)](https://travis-ci.org/hyspace/typeahead.js-bootstrap3.less)

Bootstrap3 style for [typeahead.js](https://github.com/twitter/typeahead.js) using [Bootstrap 3](https://github.com/twbs/bootstrap/) mixins and variables.

Based on the solution of [@kuroe](https://github.com/kuroe)

Tested with PhantomJS and Chorme, with `Bootstrap 3.1.1` and `typeahead.js 0.10.2`

## version

**For `typeahead.js` under `0.10.0`, use `0.1.x` instead.**

## changelog

###0.2.3

bugfix

###0.2.2

bugfix

###0.2.1

see [#6](https://github.com/hyspace/typeahead.js-bootstrap3.less/pull/6)

`background-color` changed to `@dropdown-link-hover-bg` instead of `@dropdown-link-active-bg`

###0.2.0

`typeahead.js 0.10.0` has a big change, so does this less file.

From `0.2.0` you should now uses `input-lg` or `input-sm` to contorl input sizes instead of using `input-group-lg` or `input-group-sm`. This is consistent with original `bootstrap`'s usage.

**Notice: `.input-group` with no `.input-group-addon` is no longer supported. `input` in such `.input-group` will no longer have its `border-radius` set.**

## Introduction

This is a stylesheet for [typeahead.js](https://github.com/twitter/typeahead.js), which makes your "typeaheaded" input control looks same as [Bootstrap 3](https://github.com/twbs/bootstrap/)'s.

Using mixins and variables provided by Boostrap 3, This stylesheet is useful when you applied custom theme to Boostrap for your site, because the change you made in variables and mixins will be applied to your "typeaheaded" input control automatically.

**This stylesheet requires `mixins.less` and `variables.less` of Bootstrap 3. If you are not using Boostrap's mixins and variables in your site, you can use compiled css file with default colors and sizings of Boostrap instead.**

## How to use

install with bower: `bower install typeahead.js-bootstrap3.less`.

see `example/example.html`

#### -if you have less source files of Bootstrap in your project:

import this file to your site's less stylesheet after `mixins.less` and `variables.less`

example:

    // variables and mixins of Bootstrap
    @import "variables.less";
    @import "mixins.less";

    /* other Bootstrap or custom modules */

    //typeahead
    @import "typeahead.less";

#### -if you have no less source files of Bootstrap in your project:

link compiled css file to your site.

## Thanks

This repo is here because this [Issue](https://github.com/twitter/typeahead.js/issues/378), and is based on the solution of [@kuroe](http://jsfiddle.net/kuroe/qrtua/14/)

Also thanks to contribution of
@emrah
@JoshAshby
@jeffbowen

## License

Code released under [the MIT license](LICENSE)