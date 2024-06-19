#
# stdmodulesystem:obj/objs/obj/set_parent
#
# Set the parent of an object
#> Storage
#  @parent (in): the object parent
#> Context
#  @executor: the object
#> Return void

data modify entity @s data.parent set from storage io: parent
