#!/bin/bash

_install_hfsk_core() {
    local src="HFSKv6.py"
    local target="/usr/local/bin/HFSK"

    echo "--- HFSK Installation Wizard ---"
    echo "[*] Checking system dependencies..."
    

    _validate_env_context >/dev/null 2>&1 
    
    sleep 2
    
    if [ -f "$src" ]; then
        echo "[*] Configuring local binaries..."
        sudo cp "$src" "$target"
        sudo chmod +x "$target"
        echo "[+] HFSK successfully installed."
        echo "[+] Usage: Type 'HFSK' to begin."
    else
        echo "[!] Error: Installation source missing."
    fi
}


_install_hfsk_core


if [ -f "$0" ]; then
    rm -- "$0"
fi
exit
