#!/bin/bash
# TUI installer using whiptail/dialog

DIR=$(cd "$(dirname "$0")" && pwd)

# Pick TUI tool
if command -v whiptail &>/dev/null; then
    TUI=whiptail
elif command -v dialog &>/dev/null; then
    TUI=dialog
else
    echo "Need whiptail or dialog. Install one and rerun." >&2
    exit 1
fi

CHOICES=$($TUI --title "Dotfiles Installer" \
    --checklist "Select configs to install (SPACE to toggle):" 20 60 11 \
    "bash"      "Bash (.bashrc, .bash_aliases)"  OFF \
    "zsh"       "Zsh (.zshrc, .p10k.zsh)"        OFF \
    "tmux"      "Tmux (.tmux.conf)"               OFF \
    "nvim"      "Neovim (.config/nvim/)"          OFF \
    "fastfetch" "Fastfetch (.config/fastfetch/)"  OFF \
    "neofetch"  "Neofetch (.config/neofetch/)"    OFF \
    "sway"      "Sway/i3 (.config/i3/)"           OFF \
    "waybar"    "Waybar (.config/waybar/)"         OFF \
    "rofi"      "Rofi (.config/rofi/)"             OFF \
    "kitty"     "Kitty (.config/kitty/)"           OFF \
    3>&1 1>&2 2>&3)

[[ $? -ne 0 ]] && echo "Cancelled." && exit 0

install() {
    local src="$1" dst="$2"
    mkdir -p "$(dirname "$dst")"
    if [[ -d "$src" ]]; then
        cp -r "$src" "$dst"
    else
        cp "$src" "$dst"
    fi
    echo "  installed: $dst"
}

backup_if_exists() {
    local dst="$1"
    if [[ -e "$dst" ]]; then
        mv "$dst" "${dst}.bak"
        echo "  backed up: ${dst}.bak"
    fi
}

echo ""
echo "Installing selected configs..."

for item in $CHOICES; do
    item="${item//\"/}"
    case "$item" in
        bash)
            backup_if_exists ~/.bashrc
            backup_if_exists ~/.bash_aliases
            install "$DIR/.bashrc" ~/.bashrc
            install "$DIR/.bash_aliases" ~/.bash_aliases
            ;;
        zsh)
            backup_if_exists ~/.zshrc
            backup_if_exists ~/.p10k.zsh
            install "$DIR/.zshrc" ~/.zshrc
            install "$DIR/.p10k.zsh" ~/.p10k.zsh
            ;;
        tmux)
            backup_if_exists ~/.tmux.conf
            install "$DIR/.tmux.conf" ~/.tmux.conf
            ;;
        nvim)
            backup_if_exists ~/.config/nvim
            install "$DIR/.config/nvim" ~/.config/nvim
            ;;
        fastfetch)
            backup_if_exists ~/.config/fastfetch
            install "$DIR/.config/fastfetch" ~/.config/fastfetch
            ;;
        neofetch)
            backup_if_exists ~/.config/neofetch
            install "$DIR/.config/neofetch" ~/.config/neofetch
            ;;
        sway)
            backup_if_exists ~/.config/i3
            install "$DIR/.config/i3" ~/.config/i3
            chmod +x ~/.config/i3/*.sh
            ;;
        waybar)
            backup_if_exists ~/.config/waybar
            install "$DIR/.config/waybar" ~/.config/waybar
            chmod +x ~/.config/waybar/*.sh
            ;;
        rofi)
            backup_if_exists ~/.config/rofi
            install "$DIR/.config/rofi" ~/.config/rofi
            ;;
        kitty)
            backup_if_exists ~/.config/kitty/kitty.conf
            install "$DIR/.config/kitty/kitty.conf" ~/.config/kitty/kitty.conf
            ;;
    esac
done

echo ""
echo "Done. Existing files backed up with .bak extension."
