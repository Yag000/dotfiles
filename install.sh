POS=$HOME/dotfiles

# Create copies of the old configuration files before installation

ln -s $POS/.aliases $HOME/.aliases
ln -s $POS/.functions $HOME/.functions
ln -s $POS/.bashrc $HOME/.bashrc
ln -s $POS/.tmux.conf $HOME/.tmux.conf
ln -s $POS/.vimrc $HOME/.vimrc
ln -s $POS/.zshenv $HOME/.zshenv
ln -s $POS/.zsh_profile $HOME/.zsh_profile
ln -s $POS/.zshrc $HOME/.zshrc
