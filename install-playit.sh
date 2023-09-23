echo "Welcome to playit.gg installer | UNOFFICIAL"
echo "Running: sudo apt update"
sudo apt update
echo "Adding PPA key"
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -
echo "Adding playit to apt list"
sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
echo "Updating"
sudo apt update
echo "Installing playit"
sudo apt install playit
echo "Playit has been installed!"
chmod 755 ./background-playit.sh
./background-playit.sh
