#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/block_display_entity/create/set_data
#

# Block name
function stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/block_display_entity/set_block_name

# Block properties
function stdmodulesystem:obj/objs/obj.controlled_entity.display.block_display/block_display_entity/set_block_properties

# World location
function stdmodulesystem:obj/objs/obj.controlled_entity/entity/set_location

# Return pointer
data modify storage io: entity_pointer set from entity @s UUID
