#
# obj:objs/obj.controlled_display_entity/get_right_rotation
#
# Get the right rotation of a controlled display entity
#> Storage
#  @right_rotation (out): the right rotation
#> Context
#  @executor (in): the controlled display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:display_entity/get_right_rotation"
function server:selector_entity_list/select_by_string_uuid
