#
# server:management/player_list/remove_by_uuid/match_handler
#

# Get player descriptor uuid
data modify storage io: player_descriptor set from storage io: element
function server:management/player_descriptor/get_uuid

# Check matching
execute store success score ::inout match_success run data modify storage io: uuid set from storage server:volatile management.temp_uuid
execute store result score ::inout match_success if score ::inout match_success = ::const FALSE
