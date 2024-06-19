#
# test:tests/stdmodulesystem/main
#

# Create item display 1
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [0.0d, -59.0d, 0.0d]}
data modify storage io: class_path set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display"
data modify storage io: item_id set value "minecraft:stone"
data modify storage io: item_tag set value {}
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer3 set from storage io: pointer

# Create item display 2
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [2.0d, 0.0d, 0.0d]}
data modify storage io: class_path set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display"
data modify storage io: item_id set value "minecraft:grass_block"
data modify storage io: item_tag set value {}
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer4 set from storage io: pointer

# Set item display 2 as child of item display 1
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/add_child"
data modify storage io: pointer set from storage io: pointer3
data modify storage io: child set from storage io: pointer4
function stdmodulesystem:obj/obj_runtime/bind

# Create item display 3
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [4.0d, 0.0d, 0.0d]}
data modify storage io: class_path set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display"
data modify storage io: item_id set value "minecraft:glass"
data modify storage io: item_tag set value {}
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer5 set from storage io: pointer

# Set item display 3 as child of item display 2
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/add_child"
data modify storage io: pointer set from storage io: pointer4
data modify storage io: child set from storage io: pointer5
function stdmodulesystem:obj/obj_runtime/bind

# Create item display 4
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [4.0d, 1.0d, 0.0d]}
data modify storage io: class_path set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display"
data modify storage io: item_id set value "minecraft:glass"
data modify storage io: item_tag set value {}
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer6 set from storage io: pointer

# Set item display 3 as child of item display 2
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/add_child"
data modify storage io: pointer set from storage io: pointer4
data modify storage io: child set from storage io: pointer6
function stdmodulesystem:obj/obj_runtime/bind

# Delete item display 1
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/delete"
data modify storage io: pointer set from storage io: pointer3
function stdmodulesystem:obj/obj_runtime/bind

# Create block display 1
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [0.0d, -59.0d, 10.0d]}
data modify storage io: class_path set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display"
data modify storage io: block_name set value "minecraft:grass_block"
data modify storage io: block_properties set value {snowy: "true"}
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer7 set from storage io: pointer

# Create text display 1
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [0.0d, -59.0d, 12.0d]}
data modify storage io: class_path set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display"
data modify storage io: text set value "{\"text\": \"baia sabbiabella\"}"
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer8 set from storage io: pointer

# Set text display 1 text opacity
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/set_text_opacity"
data modify storage io: pointer set from storage io: pointer8
scoreboard players set ::in text_opacity 127
function stdmodulesystem:obj/obj_runtime/bind

# Set text display 1 text
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/set_text"
data modify storage io: pointer set from storage io: pointer8
data modify storage io: text set value "{\"text\": \"baia sabbiabella 2\"}"
function stdmodulesystem:obj/obj_runtime/bind
