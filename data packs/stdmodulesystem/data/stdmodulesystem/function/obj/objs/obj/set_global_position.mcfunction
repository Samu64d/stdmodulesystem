#
# stdmodulesystem:obj/objs/obj/set_global_position
#
# Set the world global position of an object
#> Storage
#  @position (in): the world position
#> Context
#  @executor: the object
#> Return void

data modify entity @s data.global_location.position set from storage io: position

# Update marker location
data modify storage io: location set from entity @s data.global_location
function stdmodulesystem:obj/objs/obj/set_real_location
