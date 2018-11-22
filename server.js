const prerender = require('prerender');
const server = prerender({
    waitAfterLastRequest: 1000,
    chromeFlags: [ '--no-sandbox', '--headless', '--disable-gpu', '--remote-debugging-port=9222', '--hide-scrollbars' ],
    // chromeLocation: '/usr/bin/google-chrome-stable'
});
server.start();
