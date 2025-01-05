#
# minecraft_world_api:worldborder/api/reset_size
#
# Reset size of the world border
#> Return void

data modify storage io: size set from storage minecraft_world_api:static worldborder.DEFAULT_BORDER_SIZE
scoreboard players set ::in duration 0
function minecraft_world_api:worldborder/api/set_size
