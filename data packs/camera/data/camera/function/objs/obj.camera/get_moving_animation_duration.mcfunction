#
# camera:objs/obj.camera/get_moving_animation_duration
#
# Get the moving animation duration of a camera 
#> Context
#  @executor (in): the camera
#> Return data
#  moving animation duration

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:display_entity/get_teleport_duration"
function server:selector_entity_list/select_by_string_uuid

# Return data
return run scoreboard players get ::out callback_results
