#
# stdmodulesystem:obj/objs/obj/remove_child/update_child
#

# Set parent to null
data modify storage io: parent set value "NULL"
function stdmodulesystem:obj/objs/obj/set_parent

# Set world local location as world location
function stdmodulesystem:obj/objs/obj/get_global_location
function stdmodulesystem:obj/objs/obj/set_location
