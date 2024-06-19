#
# world_handler:chunk_scheduling/main/reset
#

# Empty the scheduled chunk list
function world_handler:chunk_scheduling/scheduled_chunk_list/empty

# Reset counter
scoreboard players set ::world_handler::chunk_scheduling last_scheduled_chunk_count 0
