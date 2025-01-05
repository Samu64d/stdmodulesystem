#
# world_handler:chunk_scheduling/main/process_chunks/next_chunk
#

# Get a random loaded chunk
function world_handler:chunk_manager/api/pick_random_loaded_chunk

# Get chunk
function world_handler:chunk_manager/loaded_chunk_descriptor/get_chunk

# Get status
execute store result score ::world_handler::chunk_scheduling status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# Emit event
execute unless score ::world_handler::chunk_scheduling status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_LOAD unless score ::world_handler::chunk_scheduling status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_UNLOAD run function world_handler:events/emitters/on_chunk_ticked

# Update loop variable
scoreboard players add ::world_handler::chunk_scheduling chunk_scheduling_attempts 1

execute if score ::world_handler::chunk_scheduling chunk_scheduling_attempts < ::world_handler::chunk_scheduling ticked_chunks_per_tick run function world_handler:chunk_scheduling/main/process_chunks/next_chunk

# Loop
