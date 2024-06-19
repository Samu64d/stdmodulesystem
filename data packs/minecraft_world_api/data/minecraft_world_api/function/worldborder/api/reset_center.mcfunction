#
# minecraft_world_api:worldborder/api/reset_center
#
# Reset the center of the world border
#> Return void

data modify storage io: center_x set from storage minecraft_world_api:static worldborder.DEFAULT_BORDER_CENTER_X
data modify storage io: center_z set from storage minecraft_world_api:static worldborder.DEFAULT_BORDER_CENTER_Z
function minecraft_world_api:worldborder/api/set_center
