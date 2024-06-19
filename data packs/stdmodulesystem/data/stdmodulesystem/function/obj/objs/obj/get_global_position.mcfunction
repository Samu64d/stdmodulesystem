#
# stdmodulesystem:obj/objs/obj/get_global_position
#
# Get the world global position of an object
#> Storage
#  @position (out): the world position
#> Context
#  @executor: the object
#> Return void

data modify storage io: position set from entity @s data.global_location.position
