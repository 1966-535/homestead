#!/bin/sh

VERSION=$1

if [ "$(which php${VERSION})" != "" ]; then
    sudo update-alternatives --set php /usr/bin/php$VERSION
    sudo update-alternatives --set phar /usr/bin/phar$VERSION
    sudo update-alternatives --set phar.phar /usr/bin/phar.phar$VERSION
    echo "Switched to php$VERSION successfully"
else
    echo "Could not find php$VERSION"
fi
