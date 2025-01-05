#
# keyboard:events/emitters/on_player_released_key
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.player set from storage io: player_uuid
data modify storage io: data.key_id set from storage io: key_id

# Fire
data modify storage io: name set value "keyboard:on_player_released_key"
function event_system:api/fire_end_tick
