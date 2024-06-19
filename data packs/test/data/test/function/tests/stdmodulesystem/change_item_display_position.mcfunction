#
# test:tests/stdmodulesystem/change_item_display_position
#

# Change item display 2 position
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/set_location"
data modify storage io: pointer set from storage io: pointer4
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [2.0d, -59.0d, 1.0d]}
function stdmodulesystem:obj/obj_runtime/bind
