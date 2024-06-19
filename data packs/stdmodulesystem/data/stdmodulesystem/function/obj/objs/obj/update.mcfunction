#
# stdmodulesystem:obj/objs/obj/update
#
# Update an object state
#> Context
#  @executor: the object
#> Return void

# Update marker location
function stdmodulesystem:obj/objs/obj/get_global_location
function stdmodulesystem:obj/objs/obj/set_real_location

# Call object update function
data modify storage io: method set from storage stdmodulesystem:static obj_runtime.CLASS_UPDATER_NAME
function stdmodulesystem:obj/objs/obj/invoke_virtual
