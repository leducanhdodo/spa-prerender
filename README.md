# Prerender server for Single page applications


## Development setup (for GNU/Linux OS)

Core components:

* **NodeJS**
* **SP2**
* **ChromeDriver**

Create a directory for source code

```sh
mkdir prerender-spa
cd prerender-spa
git pull origin master
```

Install Dependencies

```sh
# Install node
sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get install nodejs

# Install packages
npm install
```

## Install chromedriver
```sh
Please see install.sh
```

## Start google chrome (headless mode)

```sh
sh start-chrome.sh start-chrome-headless
```