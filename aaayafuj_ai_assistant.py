#!/usr/bin/env python3
import sys
import time
print("Welcome to Aaayafuj AI Pentest Assistant.")
print("Type a command or 'exit' to quit.")

while True:
    cmd = input("aaayafuj> ").strip()
    if cmd == "exit":
        print("Exiting. Stay ethical!")
        sys.exit(0)
    elif cmd.startswith("scan"):
        target = cmd.split(" ")[1] if len(cmd.split()) > 1 else None
        if not target:
            print("Usage: scan <target_ip>")
            continue
        print(f"Starting AI-powered scan on {target}...")
        # Simulate scanning
        time.sleep(2)
        print(f"Scan complete. Found open ports: 22, 80, 443.")
    else:
        print("Unknown command. Try 'scan <target_ip>' or 'exit'.")
