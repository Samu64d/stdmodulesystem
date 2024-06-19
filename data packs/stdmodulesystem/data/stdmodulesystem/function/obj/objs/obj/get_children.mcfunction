#
# stdmodulesystem:obj/objs/obj/get_children
#
# Get the children object list of an object
#> Storage
#  @children (out): the object children
#> Context
#  @executor: the object
#> Return void

data modify storage io: children set from entity @s data.children
