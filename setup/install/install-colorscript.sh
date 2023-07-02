sudo dnf -y install lolcat
sudo git clone https://github.com/charitarthchugh/shell-color-scripts /opt/shell-color-scripts
chmod +x /opt/shell-color-scripts/colorscript.sh
ln -s /opt/shell-color-scripts/colorscript.sh $HOME/.local/bin/colorscript
