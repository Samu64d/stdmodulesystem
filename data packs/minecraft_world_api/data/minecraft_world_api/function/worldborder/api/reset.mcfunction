#
# minecraft_world_api:worldborder/api/reset
#
# Reset the world border
#> Return void

# Size
function minecraft_world_api:worldborder/api/reset_size

# Center
function minecraft_world_api:worldborder/api/reset_center

# Damage buffer
data modify storage io: buffer set from storage minecraft_world_api:static worldborder.DEFAULT_BORDER_DAMAGE_BUFFER
function minecraft_world_api:worldborder/api/set_damage_buffer

# Damage amount
data modify storage io: amount set from storage minecraft_world_api:static worldborder.DEFAULT_BORDER_DAMAGE_AMOUNT
function minecraft_world_api:worldborder/api/set_damage_amount

# Warning time
scoreboard players operation ::in time = ::minecraft_world_api::worldborder::const DEFAULT_BORDER_WARNING_TIME
function minecraft_world_api:worldborder/api/set_warning_time

# Warning distance
scoreboard players operation ::in distance = ::minecraft_world_api::worldborder::const DEFAULT_BORDER_WARNING_DISTANCE
function minecraft_world_api:worldborder/api/set_warning_distance
