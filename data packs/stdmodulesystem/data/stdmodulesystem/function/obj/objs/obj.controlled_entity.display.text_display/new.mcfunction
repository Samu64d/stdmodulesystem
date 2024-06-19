#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/new
#
# Create a new text display
#> Storage
#  @text (in): the text
#> Return void

# Super
function stdmodulesystem:obj/objs/obj.controlled_entity.display/new

# Create text display entity
function stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/text_display_entity/create

# Set pointer
data modify entity @s data.controlled_entity set from storage io: entity_pointer
