if [ -f ./temp/fonts/Meslo.zip ]; then
	echo "Meslo already installed"
else
	wget -P ./temp/fonts/ https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.zip
	unzip ./temp/fonts/Meslo.zip -d $HOME/.local/share/fonts/Meslo
fi
