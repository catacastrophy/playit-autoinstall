echo "Welcome to playit.gg installer | UNOFFICIAL"
sudo apt install curl # Making sure CURL is installed
sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
sudo apt update
sudo apt install playit
echo "Playit has been installed, running..."
playit
