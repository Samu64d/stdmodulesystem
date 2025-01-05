#
# minecraft_entity_api:display_entity/get_view_range
#
# Get the view range of a display entity
#> Storage
#  @view_range (out): the view range
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: view_range set from entity @s view_range
