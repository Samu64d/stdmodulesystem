#
# server:management/player_descriptor/select/check
#

# Check for uuid
function server:management/player_descriptor/common/check_for_match

# Execute on match
data modify storage io: callback set from storage server:volatile management.temp_callback
execute if score ::server::management success = ::const TRUE run function server:management/player_descriptor/select/callback with storage io:
