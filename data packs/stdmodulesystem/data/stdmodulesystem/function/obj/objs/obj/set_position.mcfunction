#
# stdmodulesystem:obj/objs/obj/set_position
#
# Set the world position of an object
#> Storage
#  @position (in): the world position
#> Context
#  @executor: the object
#> Return void

data modify entity @s data.location.position set from storage io: position

# Update global location
function stdmodulesystem:obj/objs/obj/common/update_global_location

# Update children location
function stdmodulesystem:obj/objs/obj/update_children_location
