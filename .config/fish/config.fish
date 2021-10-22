#
# Executes commands at the start of an interactive session
#
# Authors
#   Finn Rutis 2020-05-01
# Last Modified
#   Finn Rutis 2021-10-21
#
# Including functions, path changes, and other little bits to improve my shell!
#
####################################################
# => ENVIRONMENT VARIABLES
####################################################

export EDITOR="nvim"
export VISUAL="nvim"

####################################################
# => FUNDLE
####################################################

if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# Utility Stuff
fundle plugin 'jethrokuan/fzf'
fundle plugin 'danhper/fish-ssh-agent'
fundle plugin 'fishpkg/fish-humanize-duration'
fundle plugin 'franciscolourenco/done'
fundle plugin 'laughedelic/pisces'

# Speed Stuff
fundle plugin 'acomagu/fish-async-prompt'

# Theme Stuff
fundle plugin 'oh-my-fish/theme-bobthefish'

fundle init

####################################################
# => PROGRAMS
####################################################

####################################################
# => SOURCING
####################################################

source $HOME/.config/fish/config/aliases.fish
