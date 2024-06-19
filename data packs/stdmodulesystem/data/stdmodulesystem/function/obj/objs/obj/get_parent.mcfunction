#
# stdmodulesystem:obj/objs/obj/get_parent
#
# Get the parent of an object
#> Storage
#  @parent (out): the object parent
#> Context
#  @executor: the object
#> Return void

data modify storage io: parent set from entity @s data.parent
