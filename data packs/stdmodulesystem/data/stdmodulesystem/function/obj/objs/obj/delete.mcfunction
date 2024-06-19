#
# stdmodulesystem:obj/objs/obj/delete
#
# Delete an object
#> Context
#  @executor: the object
#> Return void

# Call object delete function
data modify storage io: method set from storage stdmodulesystem:static obj_runtime.CLASS_DESTRUCTOR_NAME
function stdmodulesystem:obj/objs/obj/invoke_virtual

# Remove children
data modify storage io: list set from entity @s data.children
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/delete/remove_child"
function stdmodulesystem:utils/list/for_each

# Delete marker
kill @s
