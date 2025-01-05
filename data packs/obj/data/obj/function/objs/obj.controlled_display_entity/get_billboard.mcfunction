#
# obj:objs/obj.controlled_display_entity/get_billboard
#
# Get the billboard of a controlled display entity
#> Storage
#  @billboard (out): the billboard
#> Context
#  @executor (in): the controlled display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:display_entity/get_billboard"
function server:selector_entity_list/select_by_string_uuid
