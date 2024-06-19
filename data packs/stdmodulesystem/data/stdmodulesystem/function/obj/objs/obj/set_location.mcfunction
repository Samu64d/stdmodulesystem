#
# stdmodulesystem:obj/objs/obj/set_location
#
# Set the world location of an object
#> Storage
#  @location (in): the world location
#> Context
#  @executor: the object
#> Return void

data modify entity @s data.location set from storage io: location

# Update global location
function stdmodulesystem:obj/objs/obj/common/update_global_location

# Update children location
function stdmodulesystem:obj/objs/obj/update_children_location
