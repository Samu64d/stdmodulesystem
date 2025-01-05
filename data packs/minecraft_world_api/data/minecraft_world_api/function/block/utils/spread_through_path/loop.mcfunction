#
# minecraft_world_api:block/utils/spread_through_path/loop
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: block_pos"
function stdmodulesystem:stack/push

# Generate the next target position
function minecraft_world_api:block/utils/spread_through_path/gen_next_spread_block_pos

# Call callback function
function minecraft_world_api:block/utils/spread_through_path/callback with storage io:

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: discard"
execute if score ::inout match_success = ::const FALSE run data modify storage io: stack_element_ref set value "storage io: block_pos"
function stdmodulesystem:stack/pop

scoreboard players add ::minecraft_world_api::block::utils spread_attempts 1
execute if score ::minecraft_world_api::block::utils spread_attempts < ::in attempts_limit run function minecraft_world_api:block/utils/spread_through_path/loop

# Loop
