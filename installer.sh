#!/data/data/com.termux/files/usr/bin/bash

clear

# ---------- Banner ----------
echo -e "\033[1;35m"
cat << EOF
╔══════════════════════════════════════╗
║            THC-HYDRA                 ║
║          TERMUX INSTALLER            ║
║                                      ║
║  Official GitHub Source Build         ║
║  Repo: vanhauser-thc/thc-hydra        ║
║                                      ║
║  Crafted by: ShellCrafter             ║
╚══════════════════════════════════════╝
EOF
echo -e "\033[0m"

# ---------- Update & Dependencies ----------
apt update
apt install git build-essential openssl pcre libssh clang make autoconf automake

# ---------- Clone ----------
if [ ! -d "thc-hydra" ]; then
  git clone https://github.com/vanhauser-thc/thc-hydra.git
fi

cd thc-hydra || exit 1

# ---------- Build (IMPORTANT PREFIX) ----------
make clean
./configure --prefix=$HOME/.local
make
make install

# ---------- PATH (VERY IMPORTANT) ----------
# 1) Save permanently
echo 'export PATH=$HOME/.local/bin:$PATH' >> "$HOME/.profile"

# 2) Apply immediately for this shell
export PATH="$HOME/.local/bin:$PATH"

# ---------- Done ----------
echo
echo "[✓] Hydra installed successfully!"
echo "Binary location:"
echo "  $HOME/.local/bin/hydra"
echo
echo "Run from anywhere using:"
echo "  hydra -h"
echo
echo "Ethical use only. Authorized testing only."
