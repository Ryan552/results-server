#setup a results-server VM with ubuntu OS running and run this script to setup application
#install docker

sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

#sudo systemctl status docker

#install docker compose

mkdir -p ~/.docker/cli-plugins/

curl -SL https://github.com/docker/compose/releases/download/v2.3.4/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

sudo chown $USER /var/run/docker.sock

docker compose version

sudo apt install docker-compose

#install make

sudo apt update

sudo apt install make

#clone graphite/graphana image and start
git clone https://github.com/Ryan552/results_server.git

cd results_server/

make up
