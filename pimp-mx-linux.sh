#!/bin/bash

echo "🚀 Starting PIMP for MX Linux..."

# Remove unwanted packages
echo "🧹 Removing unnecessary packages..."
sudo apt remove -y asunder strawberry transmission-qt libreoffice*

# Update package list
echo "🔄 Updating package list..."
sudo apt update

# Install useful software and emoji font
echo "📦 Installing apps and fonts..."
sudo apt install -y fonts-noto-color-emoji krita filezilla putty vlc vym deluge virtualbox-qt bleachbit xscreensaver-data-extra veracrypt pulseaudio clipgrab dosbox scummvm

# Download and install ONLYOFFICE
echo "⬇️ Downloading ONLYOFFICE..."
wget https://github.com/ONLYOFFICE/DesktopEditors/releases/latest/download/onlyoffice-desktopeditors_amd64.deb
echo "📦 Installing ONLYOFFICE..."
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb

# Download and install Steam
echo "⬇️ Downloading Steam..."
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
echo "📦 Installing Steam..."
sudo dpkg -i steam.deb

# Download and install Google Chrome
echo "⬇️ Downloading Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "📦 Installing Google Chrome..."
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Download and install Google Chrome
echo "⬇️ Downloading MEGASync..."
wget https://mega.nz/linux/repo/Debian_12/amd64/megasync-Debian_12_amd64.deb
echo "📦 Installing MEGASync..."
sudo dpkg -i megasync-Debian_12_amd64.deb

# Download and install XClicker
echo "⬇️ Downloading XClicker..."
wget https://github.com/robiot/xclicker/releases/download/v1.5.1/xclicker_1.5.1_amd64.deb
echo "📦 Installing XClicker..."
sudo dpkg -i xclicker_1.5.1_amd64.deb

# Download and install Balena Etcher
echo "⬇️ Downloading Balena Etcher..."
wget https://github.com/balena-io/etcher/releases/download/v2.1.2/balena-etcher_2.1.2_amd64.deb
echo "📦 Installing Balena Etcher..."
sudo dpkg -i balena-etcher_2.1.2_amd64.deb

# Fix missing dependencies
echo "🔧 Fixing any missing dependencies..."
sudo apt install -f -y

# Clean up downloaded .deb files
echo "🗑️ Cleaning up downloaded files..."
rm -f steam.deb onlyoffice-desktopeditors_amd64.deb google-chrome-stable_current_amd64.deb
rm -f xclicker_1.5.1_amd64.deb balena-etcher_2.1.2_amd64.deb

# Install Flatpak and Bottles
echo "📦 Installing Flatpak and Bottles..."
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y flathub com.usebottles.bottles

echo ""
echo "✅ Done! MX Linux has been pimped. You can now launch:"
echo "  • Google Chrome     → Your main web browser"
echo "  • Bottles           → Run Windows apps easily"
echo "  • ONLYOFFICE        → Alternative to LibreOffice"
echo "  • Steam             → For your games"
echo "  • XClicker          → Auto clicker (gaming or automation)"
echo "  • Balena Etcher     → Create bootable USB drives"
echo ""
echo "🎉 Enjoy your upgraded MX Linux!"
