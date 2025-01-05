#
# obj:objs/obj.controlled_entity/get_rotation
#
# Get the rotation of a controlled entity
#> Storage
#  @rotation (out): the rotation
#> Context
#  @executor (in): the controlled entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:entity/get_rotation"
function server:selector_entity_list/select_by_string_uuid
