#
# stdmodulesystem:obj/objs/obj/add_child/update_child
#

# Get old parent
function stdmodulesystem:obj/objs/obj/get_parent

# Remove parent child
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/remove_child"
data modify storage io: pointer set from storage io: parent
function stdmodulesystem:obj/obj_runtime/bind

# Set new parent
data modify storage io: parent set from storage stdmodulesystem:volatile obj.obj.temp_pointer
function stdmodulesystem:obj/objs/obj/set_parent

# Update position
function stdmodulesystem:obj/objs/obj/common/update_global_location
