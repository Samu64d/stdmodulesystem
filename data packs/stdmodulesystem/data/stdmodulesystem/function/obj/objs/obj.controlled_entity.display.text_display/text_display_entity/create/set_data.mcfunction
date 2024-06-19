#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/text_display_entity/create/set_data
#

# Text
function stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/text_display_entity/set_text

# World location
function stdmodulesystem:obj/objs/obj.controlled_entity/entity/set_location

# Return pointer
data modify storage io: entity_pointer set from entity @s UUID
