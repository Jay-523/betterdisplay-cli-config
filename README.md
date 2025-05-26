# BetterDisplay CLI Configuration

This repository contains shell aliases and scripts to easily manage display configurations using BetterDisplay CLI.

## Prerequisites

- [BetterDisplay](https://github.com/waydabber/BetterDisplay) installed
- BetterDisplay CLI available in your PATH

## Getting Started

### 1. Clone or Download This Repository

```bash
git clone <repository-url>
cd betterdisplaycli_config
```

### 2. Configure Your Shell (zsh/bash)

Add the following line to your shell configuration file:

**For zsh users** (add to `~/.zshrc`):
```bash
source /Users/dopedhermit/Developer/personal_projects/betterdisplaycli_config/display_profile_aliases.sh
```

**For bash users** (add to `~/.bashrc`):
```bash
source /Users/dopedhermit/Developer/personal_projects/betterdisplaycli_config/display_profile_aliases.sh
```

**Important**: Update the path above to match where you've placed this repository on your system.

### 3. Reload Your Shell

After adding the source line, reload your shell configuration:

```bash
# For zsh
source ~/.zshrc

# For bash
source ~/.bashrc
```

### 4. Configure Your Display Names

Before using the aliases, you need to identify your display names and update the configuration:

1. **Get your display information**:
   ```bash
   display_info
   ```
   This will show you all available displays and their identifiers.

2. **Update the aliases** in `display_profile_aliases.sh` with your actual display names:
   - Replace `"Built-in Display"` with your laptop's display name
   - Replace `"L32p-30"` with your main external display name  
   - Replace `"LG ULTRAFINE"` with your side display name

3. **Update the scripts** (`stroll_mode.sh`, `coding_mode.sh`) with your display names as well.

## Available Aliases

### Display Profiles
- `stroll_mode` - Activates stroll/casual mode display configuration
- `code_mode` - Activates coding mode display configuration
- `display_info` - Shows all display identifiers and information

### Display Toggles
- `toggle_mac` - Toggles the built-in MacBook display on/off
- `toggle_main` - Toggles the main external display on/off
- `toggle_side` - Toggles the side external display on/off

### Display Management
- `only_main` - Disconnects all displays except the main one

## Customization

### Adding New Profiles

1. Create a new shell script (e.g., `gaming_mode.sh`)
2. Add BetterDisplay CLI commands for your desired configuration
3. Make it executable: `chmod +x gaming_mode.sh`
4. Add an alias in `display_profile_aliases.sh`

### Example Custom Profile

```bash
#!/bin/bash
# gaming_mode.sh

echo "Activating gaming mode..."
betterdisplaycli set --name="Main Display" --resolution=2560x1440 --refresh=144
betterdisplaycli set --name="Side Display" --connected=off
echo "Gaming mode activated!"
```

## Troubleshooting

### Command Not Found Errors

If you get "command not found" errors:

1. Make sure BetterDisplay CLI is installed and in your PATH
2. Verify the source path in your shell configuration is correct
3. Check that you've reloaded your shell configuration
4. Ensure the script files have execute permissions: `chmod +x *.sh`

### Display Names Don't Match

If the aliases don't work:

1. Run `display_info` to get the exact display names
2. Update all references to display names in the configuration files
3. Display names are case-sensitive and must match exactly

## Contributing

Feel free to add new display profiles, improve existing scripts, or enhance the documentation by submitting a pull request. 