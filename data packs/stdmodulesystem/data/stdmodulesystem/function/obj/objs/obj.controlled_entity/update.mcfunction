#
# stdmodulesystem:obj/objs/obj.controlled_entity/update
#
# Update a controlled entity state
#> Context
#  @executor: the controlled entity
#> Return void

# Get global world location
function stdmodulesystem:obj/objs/obj/get_global_location

# Update entity
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity/entity/update"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
