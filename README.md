# Simple blog
To run the server after cloning the repo, execute:
<br>
- `$ npm install`
- `$ grunt`
<br>
After that, the server will be running on localhost.
There is a watcher for changes on code that will automatically respawn the application when needed.

## PS: the application requires nodejs and mongodb installed

If you don't have them installed yet, execute the following steps:

### nodejs

1. sudo apt-get update
2. sudo apt-get install nodejs
3. sudo apt-get install npm

### mongodb

1. sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
2. echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
3. sudo apt-get update
4. sudo apt-get install mongodb-org git build-essential openssl libssl-dev pkg-config

ps2: There may be an easier way to install mongodb...
