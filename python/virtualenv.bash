export WORKON_HOME=$HOME/.env
mkdir -p $WORKON_HOME
export PROJECT_HOME=$HOME/w
mkdir -p $PROJECT_HOME

alias python2=/usr/bin/python2.7
alias python=/usr/local/bin/python3

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv

# export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
alias cdp=cdproject
