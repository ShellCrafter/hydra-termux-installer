# hydra-termux-installer
# Hydra Termux Installer

A clean and tested installer for **THC-Hydra** on **Termux (Android)**.

This repository provides a simple build and install process for running Hydra on Android devices using Termux, with binaries installed locally in the user environment.

---

## 📌 Features

- Builds **THC-Hydra** from source
- Works on **Termux (Android)**
- No root required
- Installs safely into `$HOME/.local/bin`
- Automatically updates PATH
- Verified working `hydra` command

---

## 🛠 Requirements

Make sure Termux is updated and basic packages are installed:

```bash
pkg update && pkg upgrade -y
pkg install -y git clang make openssl libssh libidn2 libxml2
🚀 Installation
Clone the repository:
Copy code
Bash
git clone https://github.com/your-username/hydra-termux-installer.git
cd hydra-termux-installer
Build and install:
Copy code
Bash
chmod +x install.sh
./install.sh
Reload PATH (for current session):
Copy code
Bash
export PATH=$HOME/.local/bin:$PATH
Verify installation:
Copy code
Bash
hydra -h
📂 Installation Path
Hydra binary is installed at:
Copy code

$HOME/.local/bin/hydra
This directory is automatically added to PATH via ~/.profile.
⚠️ Common Termux Notes
Warnings like strip: No such file or directory are normal in Termux and safely ignored.
GUI tools like xhydra are not supported in Termux.
🔐 Ethical Usage Disclaimer
This tool is provided for educational and authorized security testing only.
Do NOT use Hydra against systems you do not own or have explicit permission to test.
Unauthorized use may be illegal and unethical.
