#
# obj:objs/obj.controlled_text_display_entity/set_text
#
# Set the text of a controlled text display entity
#> Storage
#  @text (in): the text
#> Context
#  @executor (in): the controlled text display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:text_display_entity/set_text"
function server:selector_entity_list/select_by_string_uuid
