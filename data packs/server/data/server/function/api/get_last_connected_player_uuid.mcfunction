#
# server:api/get_last_connected_player_uuid
#
# Get the uuid of the last player that joined the server
#> Storage
#  @uuid (out): the player uuid
#> Return void

data modify storage io: uuid set from storage server:volatile event_system.last_joined_uuid
