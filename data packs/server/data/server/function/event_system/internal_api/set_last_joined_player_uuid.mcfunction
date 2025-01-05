#
# server:event_system/internal_api/set_last_joined_player_uuid
#

data modify storage server:volatile event_system.last_joined_uuid set from storage io: uuid
