#!/usr/bin/bash -e

if [ -z "$1" ]; then
	echo "Please enter version"
	echo "Example ./install_go.sh x.y.z"
	exit 1
fi

VERSION=$1
OS=linux
ARCH=amd64
WORKDIR=/tmp/go$VERSION

echo "Creating temporary directory $WORKDIR"
mkdir $WORKDIR

echo "Downloading go binary into $WORKDIR/go$VERSION.$OS-$ARCH.tar.gz"
wget -O $WORKDIR/go$VERSION.$OS-$ARCH.tar.gz https://golang.org/dl/go$VERSION.$OS-$ARCH.tar.gz

if [ -d "/usr/local/go" ]; then
	echo "Deleting old version of golang"
	sudo rm -r -f /usr/local/go
fi

echo "Unpacking golang version $VERSION for OS $OS with $ARCH"
sudo tar -C /usr/local -xzf $WORKDIR/go$VERSION.$OS-$ARCH.tar.gz

echo "Deleting temporary directory $WORKDIR"
sudo rm -rf $WORKDIR

echo "Testing golang binary"
/usr/local/go/bin/go version
