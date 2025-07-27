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
| Multimedia     | VLC, Krita, OpenShot                                                                 |
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

$ `git clone https://github.com/YOUR_USERNAME/pimp-mx-linux.git`

$ `cd pimp-mx-linux`

Make it executable:

$ `chmod +x pimp-mx-linux.sh`

Run the script:

$ `./pimp-mx-linux.sh`

📌 Notes
The script will automatically download .deb files from official sources.

If you already have some of the apps installed, they will be skipped or updated accordingly.

Bottles is installed via Flatpak and may require a reboot or logout to appear in your menu.

✅ After Installation
Once completed, you can start using:

- Google Chrome → for fast web browsing
- Bottles → to run Windows applications
- ONLYOFFICE → as a modern LibreOffice alternative
- Steam → for gaming
- XClicker → for automation/gaming
- Balena Etcher → to create bootable USB drives

🎉 Enjoy your upgraded MX Linux!
