const prerender = require('prerender');
const server = prerender({
    waitAfterLastRequest: 1000,
    chromeLocation: '/usr/bin/google-chrome-stable'
});
server.start();
