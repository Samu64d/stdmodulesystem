#
# world_handler:chunk_scheduling/consuming/consume_all
#

# Get the number of scheduled chunks
execute store result score ::world_handler::chunk_scheduling scheduled_chunk_list_length run function world_handler:chunk_scheduling/scheduled_chunk_list/get_count
execute if score ::world_handler::chunk_scheduling scheduled_chunk_list_length > ::world_handler::chunk_scheduling MAX_TICKING_CHUNK_COUNT run scoreboard players operation ::world_handler::chunk_scheduling scheduled_chunk_list_length = ::world_handler::chunk_scheduling MAX_TICKING_CHUNK_COUNT

# Start loop
scoreboard players set ::world_handler::chunk_scheduling last_ticked_chunk_count 0
execute if score ::world_handler::chunk_scheduling scheduled_chunk_list_length matches 1.. run function world_handler:chunk_scheduling/consuming/consume_all/next

# Flush residual chunks
function world_handler:chunk_scheduling/consuming/flush_all
