#
# world_handler:chunk_scheduling/main/calc_ticked_chunks_per_tick
#
# Calculate the number of chunks that need to be scheduled in a single tick
#> Return data
#  chunks per tick

# Get loaded chunk count
execute store result score ::world_handler::chunk_scheduling ticked_chunks_per_tick run function world_handler:chunk_manager/api/get_loaded_chunk_count
scoreboard players operation ::world_handler::chunk_scheduling ticked_chunks_per_tick *= ::int 100
scoreboard players operation ::world_handler::chunk_scheduling ticked_chunks_per_tick /= ::world_handler::const DEFAULT_TICKING_SPEED
execute if score ::world_handler::chunk_scheduling ticked_chunks_per_tick matches 0 run scoreboard players set ::world_handler::chunk_scheduling ticked_chunks_per_tick 1

# Factor < 1
execute if score ::world_handler::chunk_scheduling ticked_chunks_per_tick matches ..99 run function world_handler:chunk_scheduling/main/calc_ticked_chunks_per_tick/process_decimal_value

# Factor >= 1
execute if score ::world_handler::chunk_scheduling ticked_chunks_per_tick matches 100.. run function world_handler:chunk_scheduling/main/calc_ticked_chunks_per_tick/process_integer_value

# Limit results
execute if score ::world_handler::chunk_scheduling ticked_chunks_per_tick > ::world_handler::chunk_scheduling MAX_TICKED_CHUNKS_PER_TICK run scoreboard players operation ::world_handler::chunk_scheduling ticked_chunks_per_tick = ::world_handler::chunk_scheduling MAX_TICKED_CHUNKS_PER_TICK

# Return data
return run scoreboard players get ::world_handler::chunk_scheduling ticked_chunks_per_tick
