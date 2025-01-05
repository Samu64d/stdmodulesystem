#
# obj:objs/obj.obj/get_pointer
#
# Get the pointer of an object
#> Storage
#  @pointer (out): the object pointer
#> Context
#  @executor (in): the object
#> Return void

data modify storage io: pointer set from entity @s data.pointer
