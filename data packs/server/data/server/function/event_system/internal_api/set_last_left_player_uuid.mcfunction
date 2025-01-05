#
# server:event_system/internal_api/set_last_left_player_uuid
#

data modify storage server:volatile event_system.last_left_uuid set from storage io: uuid
