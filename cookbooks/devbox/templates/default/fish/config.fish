#!fish
fundle plugin 'edc/bass'
fundle plugin 'lethalpaga/deadlygoldfish-theme'
fundle plugin 'oh-my-fish/plugin-aws'
fundle init

# Setup PATH
set -g -x PATH $PATH ~/.local/bin ~/bin

# Load all scripts in config.d
if [ -z $FISH_CONFIG_DIR ]
  set FISH_CONFIG_DIR (dirname (status -f))/config.d
end

for FILE in (find $FISH_CONFIG_DIR -name "*.fish")
  source $FILE
end
