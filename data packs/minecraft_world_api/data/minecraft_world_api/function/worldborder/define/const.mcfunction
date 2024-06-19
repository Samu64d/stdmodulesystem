#
# minecraft_world_api:worldborder/define/const
#

scoreboard objectives add DEFAULT_BORDER_WARNING_TIME dummy

scoreboard objectives add DEFAULT_BORDER_WARNING_DISTANCE dummy

# Default border warning time
scoreboard players set ::minecraft_world_api::worldborder::const DEFAULT_BORDER_WARNING_TIME 15

# Default border warning distance
scoreboard players set ::minecraft_world_api::worldborder::const DEFAULT_BORDER_WARNING_DISTANCE 5
