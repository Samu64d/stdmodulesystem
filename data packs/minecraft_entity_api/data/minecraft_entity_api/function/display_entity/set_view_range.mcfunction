#
# minecraft_entity_api:display_entity/set_view_range
#
# Set the view range of a display entity
#> Storage
#  @view_range (in): the view range
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s view_range set from storage io: view_range
