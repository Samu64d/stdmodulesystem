#
# world_handler:chunk_manager/boot/bootmgr
#

# Check for uninitialized loaded chunk list
execute unless function world_handler:chunk_manager/loaded_chunk_list/is_initialized run function world_handler:chunk_manager/loaded_chunk_list/empty

# Check for uninitialized pending loaded chunk map
execute unless function world_handler:chunk_manager/pending_loaded_chunk_map/is_initialized run function world_handler:chunk_manager/pending_loaded_chunk_map/clear

# Check for uninitialized last event time
data modify storage io: value_ref set value "::world_handler::chunk_manager last_event_time"
execute unless function math:is_nan run scoreboard players set ::world_handler::chunk_manager last_event_time 0
