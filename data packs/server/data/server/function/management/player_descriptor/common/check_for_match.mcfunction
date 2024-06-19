#
# server:management/player_descriptor/common/check_for_match
#

# Get player entity uuid
data modify storage server:volatile management.temp_uuid set from entity @s UUID

# Get player descriptor uuid
function server:management/player_descriptor/get_uuid

# Check matching
execute store success score ::server::management success run data modify storage server:volatile management.temp_uuid set from storage io: uuid
execute store result score ::server::management success if score ::server::management success = ::const FALSE
