#
# stdmodulesystem:obj/objs/obj/add_virtual
#
# Add a virtual class method
#> Storage
#  @method (in): the class method name
#  @method_path (in): the class method path
#> Context
#  @executor: the object
#> Return void

data modify storage io: map set from entity @s data.methods
data modify storage io: key set from storage io: method
data modify storage io: value set from storage io: method_path
function stdmodulesystem:utils/map/set_key
data modify entity @s data.methods set from storage io: map
