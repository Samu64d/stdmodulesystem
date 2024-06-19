#
# minecraft_world_api:layout/define/const
#

scoreboard objectives add MIN_POSSIBLE_MIN_WORLD_HEIGHT dummy

scoreboard objectives add MAX_POSSIBLE_MIN_WORLD_HEIGHT dummy

scoreboard objectives add MAX_POSSIBLE_WORLD_HEIGHT_BIT dummy

# Minimum possible minimum world height
scoreboard players set ::minecraft_world_api::layout::const MIN_POSSIBLE_MIN_WORLD_HEIGHT -2032

# Maximum possible minimum world height
scoreboard players set ::minecraft_world_api::layout::const MAX_POSSIBLE_MIN_WORLD_HEIGHT 2031

# Maximum possible world height bit
scoreboard players set ::minecraft_world_api::layout::const MAX_POSSIBLE_WORLD_HEIGHT_BIT 4096
