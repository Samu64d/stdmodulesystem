#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/item_display_entity/create/set_data
#

# Item
data modify entity @s item.Count set value 1
function stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/item_display_entity/set_item_id

# Item tag
function stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/item_display_entity/set_item_tag

# World location
function stdmodulesystem:obj/objs/obj.controlled_entity/entity/set_location

# Return pointer
data modify storage io: entity_pointer set from entity @s UUID
