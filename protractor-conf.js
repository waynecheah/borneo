
exports.config = {
    seleniumAddress: 'http://localhost:4444/wd/hub',
    specs: ['test/e2e/scenarios.js'],
    baseUrl: 'http://localhost:9000',
    rootElement: '.gl-app',
    jasmineNodeOpts: {
        isVerbose: true, // If true, display spec names.
        showColors: true, // If true, print colors to the terminal.
        includeStackTrace: true, // If true, include stack traces in failures.
        defaultTimeoutInterval: 5000 // Default time to wait in ms before a test fails.
    }
};
