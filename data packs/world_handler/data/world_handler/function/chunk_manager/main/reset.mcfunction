#
# world_handler:chunk_manager/main/reset
#

# Empty the loaded chunk list
function world_handler:chunk_manager/loaded_chunk_list/empty

# Clear the pending loaded chunk map
function world_handler:chunk_manager/pending_loaded_chunk_map/clear

# Set default last event time
scoreboard players set ::world_handler::chunk_manager last_event_time 0
