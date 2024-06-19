#
# stdmodulesystem:obj/objs/obj/invoke
#
# Invoke a class method
#> Storage
#  @method (in): the class method path
#> Context
#  @executor: the object
#> Return void

data modify storage io: callback set from storage io: method
data modify storage io: pointer set from entity @s data.pointer
function stdmodulesystem:obj/obj_runtime/bind
