"""
DarkFleet-IQ Root Launcher
==========================
Run this from your root workspace directory to immediately launch the DarkFleet-IQ web application.
"""

import os
import sys
import subprocess

PROJECT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "dark_fleet_analytics")
APP_PATH = os.path.join(PROJECT_DIR, "app.py")

def main():
    print("=" * 80)
    print("  🛰️ DarkFleet-IQ: Launching Interactive Maritime Intelligence Platform")
    print("=" * 80)
    print(f"Target App: {APP_PATH}\n")
    
    cmd = [
        sys.executable, "-m", "streamlit", "run", APP_PATH,
        "--server.headless=false",
        "--browser.gatherUsageStats=false"
    ]
    
    try:
        subprocess.run(cmd, cwd=PROJECT_DIR)
    except KeyboardInterrupt:
        print("\n[INFO] Stopped.")

if __name__ == "__main__":
    main()
