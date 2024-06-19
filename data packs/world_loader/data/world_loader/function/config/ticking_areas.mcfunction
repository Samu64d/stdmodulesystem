#
# world_loader:config/ticking_areas
#

scoreboard objectives add ENABLE_PLAYER_TICKING_AREA dummy

scoreboard objectives add PLAYER_AREA_SIZE dummy

scoreboard objectives add ENABLE_SPAWN_TICKING_AREA dummy

# Enable ticking area around players
scoreboard players operation ::world_loader::const ENABLE_PLAYER_TICKING_AREA = ::const TRUE

# Player area size
scoreboard players set ::world_loader::const PLAYER_AREA_SIZE 16

# Enable the spawn ticking area
scoreboard players operation ::world_loader::const ENABLE_SPAWN_TICKING_AREA = ::const TRUE
