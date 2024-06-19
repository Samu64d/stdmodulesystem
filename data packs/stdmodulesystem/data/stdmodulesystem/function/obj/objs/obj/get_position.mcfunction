#
# stdmodulesystem:obj/objs/obj/get_position
#
# Get the world position of an object
#> Storage
#  @position (out): the world position
#> Context
#  @executor: the object
#> Return void

data modify storage io: position set from entity @s data.location.position
