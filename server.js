const prerender = require('prerender');
const server = prerender({
    waitAfterLastRequest: 500,
    chromeLocation: '/usr/bin/google-chrome-stable'
});
server.start();
