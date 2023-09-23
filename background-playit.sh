sudo mkdir /etc/playit
wget https://github.com/playit-cloud/playit-agent/releases/download/v0.11.0/playit-linux-amd64 -O playit
sudo chmod +x ./playit
sudo mv ./playit /etc/playit/playit
wget -O /etc/systemd/system/playit.service https://raw.githubusercontent.com/catacastrophy/playit-autoinstall/main/playit.service
sudo systemctl start playit
sudo systemctl enable playit
echo "Playit has been now installed and running in background."
echo "Please run 'playit' to configure."
