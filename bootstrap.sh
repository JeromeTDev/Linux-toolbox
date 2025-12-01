#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

echo "🚀 Starte sicheres Dev Bootstrap"

# --- Git prüfen ---
if ! command -v git >/dev/null 2>&1; then
    read -p "Git ist nicht installiert. Jetzt installieren? [y/N] " ans
    [[ "$ans" =~ ^[Yy]$ ]] && sudo apt update && sudo apt install -y git
fi

# --- SSH-Key prüfen und erstellen ---
if [ ! -f ~/.ssh/id_ed25519 ]; then
    echo "Kein SSH-Key gefunden."
    echo "Erstelle SSH-Key mit folgendem Befehl:"
    echo "ssh-keygen -t ed25519 -C 'your_email@example.com'"
    echo
    echo "Public Key anzeigen:"
    echo "cat ~/.ssh/id_ed25519.pub"
    echo "Diesen Key zu GitHub hinzufügen:"
    echo "GitHub → Settings → SSH and GPG Keys → New SSH Key"
    read -p "Weiter mit ENTER, wenn erledigt..."
fi


# --- Privates Repo --- 
read -p "GitHub-Benutzername für privates Repo: " github_user
read -p "Privates Dotfiles-Repo (Name): " dotfiles_repo

echo "Du bist im Begriff, folgendes Repo zu klonen:"
echo "git@github.com:$github_user/$dotfiles_repo.git"
read -p "Weiter? [y/N] " ans
if [[ "$ans" =~ ^[Yy]$ ]]; then
    git clone git@github.com:$github_user/$dotfiles_repo.git ~/.dotfiles
    cd ~/.dotfiles
    echo "Letzter Commit:"
    git log -1 --oneline
    read -p "Install-Skript ausführen? [y/N] " ans2
    [[ "$ans2" =~ ^[Yy]$ ]] && ./install.sh
fi

echo "✅ Öffentlicher Bootstrap abgeschlossen!"
echo "- Prüfe privat geklonte Dotfiles"
echo "- Führe manuelle Installation nur nach Prüfung aus"
