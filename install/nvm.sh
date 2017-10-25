#!/bin/sh

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

nvm install v0.10

nvm install 4.2
nvm alias default 4.2

nvm use 4.2

npm install -g tiny-care-terminal
npm install -g git-standup
