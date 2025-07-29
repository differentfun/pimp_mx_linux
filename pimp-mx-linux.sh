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
echo "📦 Fixing VirtualBox No-USB Bug..."
sudo usermod -aG vboxusers $USER

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

# Download and install MEGASync
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

# Download and install MeowSQL AppImage
echo "⬇️ Downloading MeowSQL AppImage..."
wget -O MeowSQL.AppImage https://github.com/ragnar-lodbrok/meow-sql/releases/download/v0.4.18-alpha/Linux_MeowSQL_0.4.18-x86_64.AppImage

echo "📦 Installing MeowSQL to /opt..."
sudo mv MeowSQL.AppImage /opt/MeowSQL.AppImage
sudo chmod +x /opt/MeowSQL.AppImage

# Create .desktop entry for menu integration
echo "🖥️ Creating menu entry for MeowSQL..."
cat <<EOF | sudo tee /usr/share/applications/meowsql.desktop > /dev/null
[Desktop Entry]
Name=MeowSQL
Comment=Database client similar to DBeaver
Exec=/opt/MeowSQL.AppImage
Icon=utilities-terminal
Terminal=false
Type=Application
Categories=Development;Database;
EOF

# Download and install OpenShot AppImage
echo "⬇️ Downloading OpenShot AppImage..."
wget -O OpenShot.AppImage https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v3.4.0-release-candidate-14124-6cea273b-0b018e34-x86_64.AppImage

echo "📦 Installing OpenShot to /opt..."
sudo mv OpenShot.AppImage /opt/OpenShot.AppImage
sudo chmod +x /opt/OpenShot.AppImage

# Create .desktop entry for menu integration
echo "🖥️ Creating menu entry for OpenShot..."
cat <<EOF | sudo tee /usr/share/applications/openshot.desktop > /dev/null
[Desktop Entry]
Name=OpenShot Video Editor
Comment=Simple and powerful video editor
Exec=/opt/OpenShot.AppImage
Icon=video-x-generic
Terminal=false
Type=Application
Categories=AudioVideo;Video;Editing;
EOF

# Clean up downloaded .deb files
echo "🗑️ Cleaning up downloaded files..."
rm -f steam.deb onlyoffice-desktopeditors_amd64.deb google-chrome-stable_current_amd64.deb
rm -f xclicker_1.5.1_amd64.deb balena-etcher_2.1.2_amd64.deb megasync-Debian_12_amd64.deb

# Install Flatpak and Bottles
echo "📦 Installing Flatpak and Bottles..."
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y flathub com.usebottles.bottles

echo ""
echo "✅ Done! MX Linux has been pimped. You can now launch:"
echo "  • Balena Etcher     → Create bootable USB drives"
echo "  • BleachBit         → System cleaner (like CCleaner)"
echo "  • Bottles           → Run Windows apps easily (via Flatpak)"
echo "  • Chrome            → Your main web browser"
echo "  • ClipGrab          → Download and convert YouTube videos"
echo "  • DOSBox            → Run old DOS games/apps"
echo "  • FileZilla         → FTP/SFTP file transfer client"
echo "  • Krita             → Digital painting and illustration"
echo "  • MEGAsync          → Cloud sync with MEGA"
echo "  • MeowSQL           → Lightweight SQL database client"
echo "  • ONLYOFFICE        → Alternative to LibreOffice"
echo "  • OpenShot          → Simple and powerful video editor"
echo "  • Putty             → SSH and telnet client"
echo "  • ScummVM           → Play classic point-and-click adventure games"
echo "  • Steam             → Gaming platform"
echo "  • VirtualBox        → Run virtual machines"
echo "  • XClicker          → Auto clicker for games or automation"
echo ""
echo "🎉 Enjoy your upgraded MX Linux!"

