#
# stdmodulesystem:obj/objs/obj/set_global_location
#
# Set the world global location of an object
#> Storage
#  @location (in): the world location
#> Context
#  @executor: the object
#> Return void

data modify entity @s data.global_location set from storage io: location

# Update marker location
data modify storage io: location set from entity @s data.global_location
function stdmodulesystem:obj/objs/obj/set_real_location
