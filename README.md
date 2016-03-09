# Dotfiles

A collection of my dotfiles. Running the installer will prompt you Y/N to overwrite symlinks (`ln -sin`) for every file in this directory to your home directory.

I recommend placing this dotfiles directory in your home directory as well for easier editing/pushing to github (see installation section below:)

### Installation

```sh
# to clone without submodules, remove `--recursive` flag
git clone --recursive git@github.com:Lordnibbler/dotfiles.git ~/.dotfiles

# install the dotfiles symlinks
cd ~/.dotfiles && .install.sh

# IMPORTANT: Update .gitconfig with your github username, otherwise you will be committing as me!
vi ~/.gitconfig
```

### Forking

This repo is designed to be forked and updated with your personal preferences. If you do this, whenever you change your dotfiles simply make a new git commit and push to github!  Woot. If you improve this repo and want to see your changes implemented here, please submit a Pull Request!

### Thanks
Thanks to Ben ([@Lordnibbler](https://github.com/lordnibbler)) for sharing this great setup!
