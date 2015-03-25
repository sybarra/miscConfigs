export LS_OPTIONS='--color=auto'
export CLICOLOR='1'
export LSCOLORS=''
export LSCOLORS='Bxgxfxfxbxdxdxhbadbxbx'
# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# For python virtual environments
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents/pyProj/ratbear_repo/pybaby
source /usr/local/bin/virtualenvwrapper.sh

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

alias ls='ls -GFh'
alias ll='ls -alh'

#Configure prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[31m\]FTW:\[\033[33;1m\]\W\[\033[m\]\$ "


#The color selections are:
#a = black
#b = red
#c = green
#d = brown
#e = blue
#f = magenta
#g = cyan
#h = light gray
#x = default


#The current settings and order of thier application are:
#DIR = Bx #Bold red text with default background
#SYM_LINK = gx #cyan text with default background
#SOCKET = fx #magenta text with default background
#PIPE = fx #magenta text with default background
#EXE = cx #green text with default background
#BLOCK_SP = dx #brown text with default background
#CHAR_SP = dx #brown text with default background
#EXE_SUID = hb #light grey text with red background
#EXE_GUID = ad #black text with brown background
#DIR_STICKY = bx #red text with default background
#DIR_WO_STICKY = bx #red text with default background

#Enable bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# open gvim using a gvim command, for Mac only
function gvim { /Applications/MacVim.app/Contents/MacOS/Vim -g $*; }
