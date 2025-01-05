#
# obj:objs/obj.controlled_display_entity/set_view_range
#
# Set the view range of a controlled display entity
#> Storage
#  @view_range (in): the view range
#> Context
#  @executor (in): the controlled display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:display_entity/set_view_range"
function server:selector_entity_list/select_by_string_uuid
