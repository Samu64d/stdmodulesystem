#
# world_handler:config/ticking
#

scoreboard objectives add DISABLE_TICKING dummy

scoreboard objectives add DEFAULT_TICKING_SPEED dummy

# Disable ticking flag
scoreboard players operation ::world_handler::const DISABLE_TICKING = ::const FALSE

# Ticking speed
scoreboard players set ::world_handler::const DEFAULT_TICKING_SPEED 256
