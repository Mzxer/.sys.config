plugins=(web-search bundler rake git osx)

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**'
zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

compinit -u
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000000
# End of lines configured by zsh-newuser-install
#

rm -rf .zcompdump*

source ~/.sys.config/common.sh
source ~/.sys.config/dirmark/zsh.sh

export NVM_DIR="/Users/zxy/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source ~/.nvm/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export CDPATH=/Users/zxy/dev/work

source $(brew --prefix)/etc/profile.d/autojump.sh
fpath=(/usr/local/share/zsh-completions $fpath)
alias logcat='adblogcat.py --ignore="eglCodecCommon" --ignore="OpenGLRenderer" --ignore="EGL_genymotion" --ignore="chromium" --ignore="libEGL" -i "dalvikvm" -i "top" -i "JDWP" -i "wpa_supplicant" -i "art"'

export M2_HOME=~/apache-maven-3.3.9
export PATH=$PATH:$M2_HOME/bin
