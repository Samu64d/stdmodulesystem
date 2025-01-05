#
# obj:objs/obj.controlled_entity/teleport
#
# Teleport a controlled entity to a target position
#> Storage
#  @position (in): the position
#> Context
#  @executor (in): the controlled entity
#> Return void

# Super
function obj:objs/obj.obj/set_position

# Update controlled entity
data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "obj:objs/obj.controlled_entity/teleport/on_entity"
function server:selector_entity_list/select_by_string_uuid
