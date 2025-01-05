#
# server:management/player_list/remove_by_uuid
#
# Remove a player descriptor from the player list by it's uuid
#> Context
#  @uuid (in): the uuid
#> Return void

# Remove on matching uuid
data modify storage io: list_ref set value "storage server:volatile management.player_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.uuid set from storage io: uuid
function collections:referenced_list/remove_like
