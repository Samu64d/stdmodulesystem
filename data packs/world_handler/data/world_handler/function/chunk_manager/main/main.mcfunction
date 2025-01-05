#
# world_handler:chunk_manager/main/main
#

# Get server session time
execute store result score ::world_handler::chunk_manager temp0 run function server:api/get_session_time
scoreboard players operation ::world_handler::chunk_manager temp0 -= ::world_handler::chunk_manager last_event_time

# Check for pending chunks
execute if score ::world_handler::chunk_manager temp0 matches 0.. run function world_handler:chunk_manager/main/check_for_pending_chunks

# Set counters
execute store result score ::world_handler::chunk_manager pending_loaded_chunk_count run function world_handler:chunk_manager/pending_loaded_chunk_map/get_count
execute store result score ::world_handler::chunk_manager loaded_chunk_count run function world_handler:chunk_manager/loaded_chunk_list/get_count
