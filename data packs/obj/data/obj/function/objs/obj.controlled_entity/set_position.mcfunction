#
# obj:objs/obj.controlled_entity/set_position
#
# Set the position of a controlled entity
#> Storage
#  @position (in): the position
#> Context
#  @executor (in): the controlled entity
#> Return void

# Super
function obj:objs/obj.obj/set_position

# Update controlled entity
data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:entity/set_position"
function server:selector_entity_list/select_by_string_uuid
