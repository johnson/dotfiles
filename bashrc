# fix
# dyld: DYLD_ environment variables being ignored because main executable (/usr/bin/sudo) is setuid or setgid
# set an alternative sudothesudo ()
thesudo ()
{
     # back up the DYLD_* variables
     local BACK=$DYLD_LIBRARY_PATH

     # unset DYLD_*
     unset DYLD_LIBRARY_PATH

     # calling sudo
     /usr/bin/sudo "$@"

     # restore DYLD_* after sudo finished
     export DYLD_LIBRARY_PATH=$BACK
}
# redirect sudo
alias sudo=thesudo



# Turn on advanced bash completion if the file exists 
# Get it here: http://www.caliban.org/bash/index.shtml#completion) or 
# on OSX: sudo port install bash-completion
# or: brew install bash-completion
  
# ==> Downloading http://bash-completion.alioth.debian.org/files/bash-completion-1.3.tar.bz2
# ######################################################################## 100.0%
# ==> ./configure --prefix=/usr/local/Cellar/bash-completion/1.3
# ==> make install
# ==> Caveats
# Add the following lines to your ~/.bash_profile:
#   if [ -f $(brew --prefix)/etc/bash_completion ]; then
#     . $(brew --prefix)/etc/bash_completion
#   fi
# 
# Homebrew's own bash completion script has been installed to
#   /usr/local/etc/bash_completion.d
# ==> Caveats
# Bash completion has been installed to:
#   /usr/local/etc/bash_completion.d
# ==> Summary
# /usr/local/Cellar/bash-completion/1.3: 187 files, 1.0M, built in 13 seconds
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

source ~/.bash/bash_config
source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/libs
source ~/.bash/config
source ~/.bash/gcc

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi