#
# stdmodulesystem:obj/objs/obj/update_children_location
#

data modify storage io: list set from entity @s data.children
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/update_children_location/update_child"
function stdmodulesystem:utils/list/for_each
