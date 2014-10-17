// Karma configuration
// Generated on Tue Jul 15 2014 13:46:51 GMT+0800 (MYT)

module.exports = function(config) {
  config.set({

    // base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '',


    // frameworks to use
    // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['jasmine'],


    // list of files / patterns to load in the browser
    files: [
        'app/bower_components/lodash/dist/lodash.compat.js',
        'app/bower_components/angular/angular.js',
        'app/bower_components/angular-animate/angular-animate.js',
        'app/bower_components/angular-sanitize/angular-sanitize.js',
        'app/bower_components/angular-ui-router/release/angular-ui-router.js',
        'app/bower_components/ionic/js/ionic.js',
        'app/bower_components/ionic/js/ionic-angular.js',
        'app/bower_components/angular-gettext/dist/angular-gettext.js',
        'app/bower_components/ngstorage/ngStorage.js',
        'app/bower_components/ngCordova/dist/ng-cordova.js',
        'app/bower_components/ng-cordova-ionic/dist/ng-cordova-ionic.js',
        'app/bower_components/angular-mocks/angular-mocks.js',
        'build/scripts/**/*.js',
        'app/locale/**/*.js'
    ],


    // list of files to exclude
    exclude: [
    ],


    // preprocess matching files before serving them to the browser
    // available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors: {
    },

    // test results reporter to use
    // possible values: 'dots', 'progress'
    // available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['progress'],


    // web server port
    port: 9876,


    // enable / disable colors in the output (reporters and logs)
    colors: true,


    // level of logging
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,


    // enable / disable watching file and executing tests whenever any file changes
    autoWatch: true,


    // start these browsers
    // available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: ['chrome_without_security'],

    customLaunchers: {
            chrome_without_security: {
            base: 'Chrome',
            flags: ['--disable-web-security']
        }
    },

    // Continuous Integration mode
    // if true, Karma captures browsers, runs the tests and exits
    singleRun: false
  });
};
