#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/hypr/wallpaper/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"

# Generate color scheme with pywal
wal -i "$WALLPAPER" -n # -n prevents changing the wallpaper again

bash $HOME/.local/bin/pywal-discord.sh
bash $HOME/.local/bin/pywal-kid3.sh
