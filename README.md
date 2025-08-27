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
| Office         | ONLYOFFICE Desktop Editors, Xpad (Sticky Notes), VSCodium                            |
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
git clone https://github.com/differentfun/pimp-mx-linux.git
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

🎉 Enjoy your upgraded MX Linux!
