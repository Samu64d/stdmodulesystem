#
# minecraft_world_api:block/utils/count_in_area/match_handler
#

# Get block name
function minecraft_world_api:block/api/get_block_name_at_pos

# Check matching
execute store success score ::inout match_success run data modify storage io: name set from storage minecraft_world_api:volatile block.utils.temp_name
execute store result score ::inout match_success if score ::inout match_success = ::const FALSE
