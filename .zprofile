#
# Languages
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

if [[ -z "$LC_ALL" ]]; then
  export LC_ALL='en_US.UTF-8'
fi

#
# Paths
#

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)
