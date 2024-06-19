#
# stdmodulesystem:obj/objs/obj/remove_child
#
# Remove a child object from an object
#> Storage
#  @child: the child
#> Context
#  @executor: the object
#> Return void

# Remove child from the children list
data modify storage io: list set from entity @s data.children
data modify storage io: element set from storage io: child
function stdmodulesystem:utils/list/remove
data modify entity @s data.children set from storage io: list

# Update child
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/remove_child/update_child"
data modify storage io: pointer set from storage io: child
function stdmodulesystem:obj/obj_runtime/bind
