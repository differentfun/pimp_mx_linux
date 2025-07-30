# 🚀 PIMP MX Linux

**PIMP MX Linux** is a simple Bash script to "pimp" your MX Linux installation by removing unnecessary software and installing a curated set of useful applications, tools, and fonts. Ideal for fresh installs or quick setups!

---

## 🛠️ Features

- Removes unwanted default packages (e.g., LibreOffice, Transmission)
- Installs essential software like:
  - Google Chrome
  - ONLYOFFICE
  - Steam
  - Bottles (via Flatpak)
  - Krita, VLC, Veracrypt, VirtualBox, and more
- Adds emoji font support (Noto Color Emoji)
- Includes system tools like BleachBit, XClicker, and Balena Etcher
- Automatically fixes missing dependencies
- Cleans up downloaded `.deb` files after install

---

## 📦 Apps Installed

| Category        | Applications                                                                        |
|----------------|--------------------------------------------------------------------------------------|
| Browsers       | Google Chrome                                                                        |
| Office         | ONLYOFFICE Desktop Editors                                                           |
| Gaming         | Steam, XClicker (auto-clicker), Bottles (via Flatpak), DosBox, ScummVM               |
| Multimedia     | VLC, Krita, OpenShot, Wine-Staging                                                   |
| Network\etc    | FileZilla, PuTTY, Deluge, Clipgrab, MEGASync, MeowSQL                                |
| System Tools   | BleachBit, Balena Etcher, Veracrypt, VirtualBox, VYM, pulseaudio, xscreensaver-extra |
| Fonts          | Noto Color Emoji                                                                     |

---

## 📋 Requirements

- MX Linux (tested on recent versions)
- Internet connection
- `sudo` privileges

---

## 🚀 Installation

1. **Download the script:**
```bash
git clone https://github.com/YOUR_USERNAME/pimp-mx-linux.git
```
```bash
cd pimp-mx-linux
```

Make it executable:

```bash
chmod +x pimp-mx-linux.sh
```

Run the script:

```bash
./pimp-mx-linux.sh
```

## 📌 Notes

The script will automatically download .deb files from official sources.

If you already have some of the apps installed, they will be skipped or updated accordingly.

Bottles is installed via Flatpak and may require a reboot or logout to appear in your menu.

✅ After Installation
Once completed, you can start using:

- Balena Etcher → to create bootable USB drives
- BleachBit → clean and optimize your system
- Bottles → to run Windows applications
- ClipGrab → download and convert YouTube videos
- DOSBox → run old DOS games and apps
- FileZilla → FTP and SFTP file transfer
- Google Chrome → for fast web browsing
- Krita → digital painting and illustration
- MEGAsync → cloud synchronization with MEGA
- MeowSQL → lightweight SQL database client
- ONLYOFFICE → as a modern LibreOffice alternative
- OpenShot → simple and powerful video editor
- PuTTY → SSH and telnet client
- ScummVM → play classic point-and-click adventure games
- Steam → for gaming
- VirtualBox → run virtual machines
- XClicker → for automation or gaming
  
🎉 Enjoy your upgraded MX Linux!
