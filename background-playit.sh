if [ "$EUID" -eq 0 ]; then
  sudo mkdir /etc/playit
  wget https://github.com/playit-cloud/playit-agent/releases/download/v0.11.0/playit-linux-amd64 -O playit
  sudo chmod +x ./playit
  sudo mv ./playit /etc/playit/playit
  wget -O /etc/systemd/system/playit.service https://raw.githubusercontent.com/catacastrophy/playit-autoinstall/main/playit.service
  sudo systemctl start playit
  sudo systemctl enable playit
  echo "Done! Playit is now running in background."
else 
  echo "Please run this script as sudo!"
fi  
