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
