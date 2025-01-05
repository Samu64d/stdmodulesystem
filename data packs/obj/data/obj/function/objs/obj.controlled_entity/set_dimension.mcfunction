#
# obj:objs/obj.controlled_entity/set_dimension
#
# Set the dimension of a controlled entity
#> Storage
#  @dimension (in): the dimension
#> Context
#  @executor (in): the controlled entity
#> Return void

# Super
function obj:objs/obj.obj/set_dimension

# Update controlled entity
data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:entity/set_dimension"
function server:selector_entity_list/select_by_string_uuid
