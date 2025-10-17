#!/bin/bash
# 🔋 Keep-Awake Script for Manjaro (KDE/GNOME)

echo "[+] Disabling all sleep and hibernate modes..."
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

echo "[+] Disabling screen blanking and power management..."
xset s off
xset -dpms
xset s noblank

echo "[+] Disabling KDE auto lock (if KDE is installed)..."
kwriteconfig5 --file kscreenlockerrc --group Daemon --key Autolock false 2>/dev/null
kwriteconfig5 --file kscreenlockerrc --group Daemon --key LockOnSuspend false 2>/dev/null

echo "[+] Done! Your Manjaro device will now stay awake indefinitely."

