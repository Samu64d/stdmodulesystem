#
# server:api/get_last_disconnected_player_uuid
#
# Get the uuid of the last player that left the server
#> Storage
#  @uuid (out): the player uuid
#> Return void

data modify storage io: uuid set from storage server:volatile event_system.last_left_uuid
