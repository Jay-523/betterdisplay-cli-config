#!/bin/bash

# Coding mode profile
# Set brightness to 70%, contrast to 75%, and higher gamma for better text clarity on Lenovo L32p-30 display
gamma=10%
temperature=25%
contrast=-25%

betterdisplaycli set --name="L32p-30" --brightness=70% --contrast=$contrast --gamma=$gamma --temperature=$temperature 2>/dev/null || true
betterdisplaycli set --name="LG ULTRAFINE" --brightness=60% --contrast=$contrast --gamma=$gamma --temperature=$temperature 2>/dev/null || true
betterdisplaycli set --name="Built-in Display" --brightness=60% --contrast=-10% --gamma=0% --temperature=$temperature 2>/dev/null || true

echo "Switched to Coding Mode! 🚀🚀 Zen Baby! 👨‍💻"