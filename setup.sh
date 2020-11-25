# pyenv
curl https://pyenv.run | bash
exec $SHELL
pyenv install -v 3.8.6

# poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

# docker
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# install docker engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# verify build
sudo docker run hello-world

# install docker compose - version 1.27.4
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# add executable permission
sudo chmod +x /usr/local/bin/docker-compose

# UFW and Docker best practices, see:
# https://stackoverflow.com/questions/30383845/what-is-the-best-practice-of-docker-ufw-under-ubuntu/46266757#46266757
cat ./after.rules >> /etc/ufw/after.rules

# to allow port, run
# ufw route allow proto tcp from any to any port 80
