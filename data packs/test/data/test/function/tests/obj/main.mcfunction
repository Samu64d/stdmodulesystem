#
# test:tests/obj/main
#

# Create controlled item display entity 1
data modify storage io: dimension set value "minecraft:overworld"
data modify storage io: position set value [0.0d, -59.0d, 0.0d]
data modify storage io: class_name set value "obj:controlled_item_display_entity"
data modify storage io: item_id set value "minecraft:stone"
data modify storage io: item_components set value {}
function obj:new
data modify storage io: pointer0 set from storage io: pointer

# Create controlled item display entity 1
data modify storage io: dimension set value "minecraft:overworld"
data modify storage io: position set value [5.0d, -59.0d, 0.0d]
data modify storage io: class_name set value "obj:controlled_item_display_entity"
data modify storage io: item_id set value "minecraft:grass_block"
data modify storage io: item_components set value {}
function obj:new
data modify storage io: pointer1 set from storage io: pointer

# Delete controlled item display entity 1
data modify storage io: method set value "delete"
data modify storage io: pointer set from storage io: pointer0
function obj:bind

# Create controlled block display entity 1
data modify storage io: dimension set value "minecraft:overworld"
data modify storage io: position set value [0.0d, -59.0d, 5.0d]
data modify storage io: class_name set value "obj:controlled_block_display_entity"
data modify storage io: block_name set value "minecraft:grass_block"
data modify storage io: block_properties set value {snowy: "true"}
function obj:new
data modify storage io: pointer2 set from storage io: pointer

# Create controlled text display entity 1
data modify storage io: dimension set value "minecraft:overworld"
data modify storage io: position set value [0.0d, -59.0d, 2.0d]
data modify storage io: class_name set value "obj:controlled_text_display_entity"
data modify storage io: text set value "{\"text\": \"baia sabbiabella\"}"
function obj:new
data modify storage io: pointer3 set from storage io: pointer

# Set controlled text display entity 1 text opacity
data modify storage io: method set value "set_text_opacity"
data modify storage io: pointer set from storage io: pointer3
scoreboard players set ::in text_opacity 127
function obj:bind

# Set controlled text display entity 1 text
data modify storage io: method set value "set_text"
data modify storage io: pointer set from storage io: pointer3
data modify storage io: text set value "{\"text\": \"baia sabbiabella 2\"}"
function obj:bind
