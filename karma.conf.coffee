# Karma configuration
# Generated on Mon Feb 03 2014 23:33:34 GMT+0800 (CST)

module.exports = (config) ->
  config.set

    # base path, that will be used to resolve all patterns, eg. files, exclude
    basePath: ''

    # frameworks to use
    frameworks: ['jasmine']

    # list of files / patterns to load in the browser
    files: [
      'tests/vendor/*.css',
      'typeahead.css'
      {pattern: 'tests/fixtures/*.html', included: false, served: true}
      'tests/vendor/jquery*.js',
      'tests/vendor/*.js',
      'tests/helpers/*.js',
      'tests/fixtures/*.coffee',
      'tests/test.coffee',
      'tests/*.spec.coffee'
    ]

    # list of files to exclude
    exclude: [

    ]

    # test results reporter to use
    # possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
    reporters: ['progress']

    # web server port
    port: 9876

    # enable / disable colors in the output (reporters and logs)
    colors: true

    # level of logging
    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera (has to be installed with `npm install karma-opera-launcher`)
    # - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
    # - PhantomJS
    # - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
    browsers: ['Chrome']

    # If browser does not capture in given timeout [ms], kill it
    captureTimeout: 5000

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false

    preprocessors:
      '**/*.coffee': ['coffee']
      '**/*.html': []

    coffeePreprocessor:
      # options passed to the coffee compiler
      options:
        bare: true
        sourceMap: false

      # transforming the filenames
      transformPath: (path)->
        path.replace(/\.coffee$/, '.js')
