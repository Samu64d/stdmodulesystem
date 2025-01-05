#
# obj:objs/obj.controlled_display_entity/set_left_rotation
#
# Set the left rotation of a controlled display entity
#> Storage
#  @left_rotation (in): the left rotation
#> Context
#  @executor (in): the controlled display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:display_entity/set_left_rotation"
function server:selector_entity_list/select_by_string_uuid
