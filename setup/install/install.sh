echo INSTALLING DNF PACKAGES
sudo dnf install $(cat ./dnf.txt)

echo INSTALLING COLORSCRIPT
./install-colorscript

echo INSTALLING STARSHIP
sudo curl -sS https://starship.rs/install.sh | sh # install starship

