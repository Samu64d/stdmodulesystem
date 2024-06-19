#
# stdmodulesystem:obj/objs/obj/get_global_location
#
# Get the world global location of an object
#> Storage
#  @location (out): the world location
#> Context
#  @executor: the object
#> Return void

data modify storage io: location set from entity @s data.global_location
