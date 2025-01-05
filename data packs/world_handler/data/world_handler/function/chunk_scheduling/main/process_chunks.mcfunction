#
# world_handler:chunk_scheduling/main/process_chunks
#

# Calculate the number of chunks that need to be ticked
execute store result score ::world_handler::chunk_scheduling ticked_chunks_per_tick run function world_handler:chunk_scheduling/main/calc_ticked_chunks_per_tick

# Reset value
scoreboard players set ::world_handler::chunk_scheduling chunk_scheduling_attempts 0

# Start random chunks search
execute if score ::world_handler::chunk_scheduling ticked_chunks_per_tick matches 1.. run function world_handler:chunk_scheduling/main/process_chunks/next_chunk
