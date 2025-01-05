#
# server:management/player_descriptor/select
#
# Select the player matching the player descriptor
#> Storage
#  @player_descriptor (in): the player descriptor
#  @callback (in): the callback function
#> Return data
#  boolean flag

data modify storage io: uuid set from storage io: player_descriptor.uuid
return run function server:selector_entity_list/select_by_string_uuid
