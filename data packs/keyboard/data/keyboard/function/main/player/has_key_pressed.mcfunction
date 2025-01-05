#
# keyboard:main/player/has_key_pressed
#

# Default success to false
scoreboard players operation ::keyboard success = ::const FALSE

# Select player by string uuid
data modify storage io: uuid set from storage io: player_uuid
data modify storage io: callback set value "keyboard:main/player/has_key_pressed/on_player"
function server:selector_entity_list/select_by_string_uuid

# Return data
return run scoreboard players get ::keyboard success
