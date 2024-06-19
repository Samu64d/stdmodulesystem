#
# stdmodulesystem:obj/objs/obj/update_children_location/update_child
#

# Update child location
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/common/update_global_location"
data modify storage io: pointer set from storage io: element
function stdmodulesystem:obj/obj_runtime/bind

# Update child children
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/update_children_location"
data modify storage io: pointer set from storage io: element
function stdmodulesystem:obj/obj_runtime/bind
