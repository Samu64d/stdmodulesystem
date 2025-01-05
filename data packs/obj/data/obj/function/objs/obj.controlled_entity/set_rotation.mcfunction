#
# obj:objs/obj.controlled_entity/set_rotation
#
# Set the rotation of a controlled entity
#> Storage
#  @rotation (in): the rotation
#> Context
#  @executor (in): the controlled entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:entity/set_rotation"
function server:selector_entity_list/select_by_string_uuid
