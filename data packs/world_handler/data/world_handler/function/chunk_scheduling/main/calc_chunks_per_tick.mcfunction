#
# world_handler:chunk_scheduling/main/calc_chunks_per_tick
#
# Calculate the number of chunks that need to be scheduled in a single tick
#> Return data
#  chunks per tick

# Get loaded chunk count
execute store result score ::world_handler::chunk_scheduling chunks_per_tick run function world_handler:chunk_manager/api/get_loaded_chunk_count
scoreboard players operation ::world_handler::chunk_scheduling chunks_per_tick *= ::int 100
scoreboard players operation ::world_handler::chunk_scheduling chunks_per_tick /= ::world_handler::const DEFAULT_TICKING_SPEED

# Factor < 1
execute if score ::world_handler::chunk_scheduling chunks_per_tick matches ..99 run function world_handler:chunk_scheduling/main/calc_chunks_per_tick/process_decimal_value

# Factor >= 1
execute if score ::world_handler::chunk_scheduling chunks_per_tick matches 100.. run function world_handler:chunk_scheduling/main/calc_chunks_per_tick/process_integer_value

# Return data
return run scoreboard players get ::world_handler::chunk_scheduling chunks_per_tick
