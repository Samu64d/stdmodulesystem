#
# camera:objs/obj.camera/set_moving_animation_duration
#
# Set the moving animation duration of a camera
#> Storage
#  @moving_animation_duration (in): the moving animation duration
#> Context
#  @executor (in): the camera
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:display_entity/set_teleport_duration"
scoreboard players operation ::in teleport_duration = ::in moving_animation_duration
function server:selector_entity_list/select_by_string_uuid
