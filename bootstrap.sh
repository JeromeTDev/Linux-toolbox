#!/usr/bin/env bash

# 1. Git installieren (wenn nicht vorhanden)
if ! command -v git >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y git
fi

# 2. SSH Schlüssel erzeugen (falls noch nicht existiert)
if [ ! -f ~/.ssh/id_ed25519 ]; then
    read -p "Gib deine Email für den SSH-Key an: " user_email
    ssh-keygen -t ed25519 -C "$user_email" -f ~/.ssh/id_ed25519 -N ""
    echo "Public Key für GitHub:"
    cat ~/.ssh/id_ed25519.pub
    echo "Füge den Key in GitHub → Settings → SSH Keys ein"
    read -p "Weiter mit ENTER, wenn erledigt..."
fi

# 3. GitHub User & Repo abfragen
read -p "Gib deinen GitHub-Benutzernamen ein: " github_user
read -p "Gib den privaten Dotfiles-Repo-Namen ein: " dotfiles_repo

# 4. Privates Dotfiles Repo klonen
git clone git@github.com:$github_user/$dotfiles_repo.git ~/.dotfiles

# 5. Install-Script starten
cd ~/.dotfiles
./install.sh
