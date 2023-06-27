POS=$HOME/dotfiles

mkdir "$HOME/.old_dotfiles"

mv "$HOME/.aliases" "$HOME/.old_dotfiles"
mv "$HOME/.functions" "$HOME/.old_dotfiles"
mv "$HOME/.bashrc" "$HOME/.old_dotfiles"
mv "$HOME/.tmux.conf" "$HOME/.old_dotfiles"
mv "$HOME/.vimrc" "$HOME/.old_dotfiles"
mv "$HOME/.zshenv" "$HOME/.old_dotfiles"
mv "$HOME/.zsh_profile" "$HOME/.old_dotfiles"
mv "$HOME/.zshrc" "$HOME/.old_dotfiles"
mv "$HOME/alacritty.yml" "$HOME/.old_dotfiles"
mv "$HOME/.config/betterlockscreenrc" "$HOME/.old_dotfiles"

# Config folders
mv "$HOME/.config/nvim" "$HOME/.old_dotfiles"
mv "$HOME/.config/i3" "$HOME/.old_dotfiles"
mv "$HOME/.config/picom" "$HOME/.old_dotfiles"
mv "$HOME/.config/dunst" "$HOME/.old_dotfiles"

# Create copies of the old configuration files before installation
ln -s "$POS/.aliases" "$HOME/.aliases"
ln -s "$POS/.functions" "$HOME/.functions"
ln -s "$POS/.bashrc" "$HOME/.bashrc"
ln -s "$POS/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$POS/.vimrc" "$HOME/.vimrc"
ln -s "$POS/.zshenv" "$HOME/.zshenv"
ln -s "$POS/.zsh_profile" "$HOME/.zsh_profile"
ln -s "$POS/.zshrc" "$HOME/.zshrc"
ln -s "$POS/alacritty.yml" "$HOME/alacritty.yml"
ln -s "$POS/betterlockscreen/betterlockscreenrc" "$HOME/.config/betterlockscreenrc"

# Config folders
ln -s "$POS/nvim" "$HOME/.config/nvim"
ln -s "$POS/i3" "$HOME/.config/i3"
ln -s "$POS/picom" "$HOME/.config/picom"
ln -s "$POS/dunst" "$HOME/.config/dunst"
