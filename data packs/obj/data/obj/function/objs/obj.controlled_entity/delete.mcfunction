#
# obj:objs/obj.controlled_entity/delete
#
# Delete a controlled entity
#> Context
#  @executor (in): the controlled entity
#> Return void

# Super
function obj:objs/obj.obj/delete

# Delete controlled entity
data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:entity/delete"
function server:selector_entity_list/select_by_string_uuid
