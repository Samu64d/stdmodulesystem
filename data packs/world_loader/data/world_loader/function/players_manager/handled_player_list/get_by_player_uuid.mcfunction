#
# world_loader:players_manager/handled_player_list/get_by_player_uuid
#
# Get, if exists, an handled player descriptor from the handled player list by it's uuid
#> Storage
#  @player_uuid (in): the player uuid
#  @handled_player_descriptor (out): the handled player descriptor
#> Return data
#  boolean flag

# Get from the handled player list
data modify storage io: list_ref set value "storage world_loader:volatile players_manager.handled_player_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.player set from storage io: player_uuid
execute store result score ::world_loader::players_manager success run function collections:referenced_list/get_first_like
execute if score ::world_loader::players_manager success = ::const TRUE run data modify storage io: handled_player_descriptor set from storage io: element

# Return data
return run scoreboard players get ::world_loader::players_manager success
