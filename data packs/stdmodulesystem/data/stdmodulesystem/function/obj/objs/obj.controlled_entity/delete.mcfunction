#
# stdmodulesystem:obj/objs/obj.controlled_entity/delete
#
# Delete a controlled entity
#> Context
#  @executor: the controlled entity
#> Return void

# Delete controlled entity
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity/entity/delete"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
