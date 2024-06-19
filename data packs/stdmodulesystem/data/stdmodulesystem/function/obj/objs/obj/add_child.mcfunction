#
# stdmodulesystem:obj/objs/obj/add_child
#
# Add a child object to an object
#> Storage
#  @child (in): the child
#> Context
#  @executor: the object
#> Return void

# Add child to children list
data modify storage io: list set from entity @s data.children
data modify storage io: element set from storage io: child
function stdmodulesystem:utils/list/add_last
data modify entity @s data.children set from storage io: list

# Save parent pointer
data modify storage stdmodulesystem:volatile obj.obj.temp_pointer set from entity @s data.pointer

# Update child
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/add_child/update_child"
data modify storage io: pointer set from storage io: child
function stdmodulesystem:obj/obj_runtime/bind
