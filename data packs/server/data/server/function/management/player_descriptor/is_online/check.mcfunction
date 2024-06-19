#
# server:management/player_descriptor/is_online/check
#

# Check for uuid
function server:management/player_descriptor/common/check_for_match

# Set flag value on success
execute if score ::server::management success = ::const TRUE run scoreboard players operation ::server::management is_online = ::const TRUE
