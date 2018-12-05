const prerender = require('prerender');
const server = prerender({
    waitAfterLastRequest: 1000,
    chromeFlags: [ '--no-sandbox', '--headless', '--disable-gpu', '--remote-debugging-port=9222', '--hide-scrollbars', '--disable-dev-shm-usage' ],
    // chromeLocation: '/usr/bin/google-chrome-stable'
});

server.use(require('prerender-memory-cache'))

server.start();
