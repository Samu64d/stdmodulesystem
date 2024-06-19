#
# stdmodulesystem:obj/objs/obj/invoke_virtual
#
# Invoke a virtual class method
#> Storage
#  @method (in): the class method name
#> Context
#  @executor: the object
#> Return void

data modify storage io: map set from entity @s data.methods
data modify storage io: key set from storage io: method
function stdmodulesystem:utils/map/get_key
data modify storage io: method set from storage io: value
function stdmodulesystem:obj/objs/obj/invoke
