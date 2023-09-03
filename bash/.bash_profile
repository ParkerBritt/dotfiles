# .bash_profile
echo starting bash profile 

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


# User specific environment and startup programs
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOBIN

export PATH=$PATH:/opt/sidefx/launcher/bin

source /home/parker/.config/broot/launcher/bash/br
