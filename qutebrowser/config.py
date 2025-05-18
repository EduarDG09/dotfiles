c = c
config = config

import catppuccin

# Load existing settings made via :set
config.load_autoconfig()

catppuccin.setup(c, "mocha", True)

config.bind("tH", "config-cycle tabs.show multiple never")
config.bind("sH", "config-cycle statusbar.show always never")
