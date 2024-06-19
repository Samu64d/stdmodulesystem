#
# stdmodulesystem:obj/objs/obj.controlled_entity/set_rotation
#
# Set the rotation of a controlled entity
#> Storage
#  @rotation (in): the rotation
#> Context
#  @executor: the controlled entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity/entity/set_rotation"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
