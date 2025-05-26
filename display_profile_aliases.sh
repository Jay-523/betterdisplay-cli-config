#!/bin/bash

# Add this to your .zshrc or .bashrc to load these aliases
# source /Users/dopedhermit/Developer/personal_projects/betterdisplaycli_config/display_profile_aliases.sh

# Display profile aliases
alias stroll_mode="/Users/dopedhermit/Developer/personal_projects/betterdisplaycli_config/stroll_mode.sh"
alias code_mode="/Users/dopedhermit/Developer/personal_projects/betterdisplaycli_config/coding_mode.sh"
alias display_info="betterdisplaycli get --identifiers" 

# Display toggle aliases
alias toggle_mac='betterdisplaycli toggle --name="Built-in Display" --connected'
alias toggle_main='betterdisplaycli toggle --name="L32p-30" --connected'
alias toggle_side='betterdisplaycli toggle --name="LG ULTRAFINE" --connected'

# Display management aliases
alias only_main='betterdisplaycli perform --disconnectAllButMain' 