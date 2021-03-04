# dotfiles
My config files using a bare git repository

## Install

### Clone repo
```sh
 git clone \
   --separate-git-dir=$HOME/.dotfiles \
   https://github.com/g-gaston/dotfiles.git \
   dotfiles-tmp
```

### Move conf files to home
```sh
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
```
### Delete tmp dir
```sh
rm -rf dotfiles-tmp
```

## Usage
Manage files like any other git repo, using command `dotfiles` instead of `git`