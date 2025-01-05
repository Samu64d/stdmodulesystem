#
# server:events/emitters/on_player_joined
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.uuid set from storage io: uuid
data modify storage io: data.name set from storage io: name

# Fire
data modify storage io: name set value "server:on_player_joined"
function event_system:api/fire_end_tick
