import os
from pathlib import Path

commands = ['ping', 'tracert']
network_address = input("Please enter network adress: ")
output_dir = str(Path.home()) + "\Downloads"

for command in commands:
    os.system("powershell \"" + command + " " + network_address + " | tee " + output_dir + "\\" + command + "_" + network_address + ".txt\"")
os.system("sharex -workflow \"Capture active window\"")