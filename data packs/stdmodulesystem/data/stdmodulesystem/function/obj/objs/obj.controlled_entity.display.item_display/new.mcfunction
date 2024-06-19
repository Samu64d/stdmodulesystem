#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/new
#
# Create a new item display
#> Storage
#  @item_id (in): the item id
#  @item_tag (in): the item tag
#> Return void

# Super
function stdmodulesystem:obj/objs/obj.controlled_entity.display/new

# Create item display entity
function stdmodulesystem:obj/objs/obj.controlled_entity.display.item_display/item_display_entity/create

# Set pointer
data modify entity @s data.controlled_entity set from storage io: entity_pointer
