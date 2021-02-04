cd ~
curl -O https://dl.google.com/go/go1.15.7.linux-amd64.tar.gz
sha256sum go1.15.7.linux-amd64.tar
tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
