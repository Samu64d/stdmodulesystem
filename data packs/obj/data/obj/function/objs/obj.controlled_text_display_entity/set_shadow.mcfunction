#
# obj:objs/obj.controlled_text_display_entity/set_shadow
#
# Set the shadow of a controlled text display entity
#> Scores
#  @shadow (in): the shadow
#> Context
#  @executor (in): the controlled text display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:text_display_entity/set_shadow"
function server:selector_entity_list/select_by_string_uuid
