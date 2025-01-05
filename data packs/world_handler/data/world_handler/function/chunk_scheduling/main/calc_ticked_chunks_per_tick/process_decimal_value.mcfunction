#
# world_handler:chunk_scheduling/main/calc_ticked_chunks_per_tick/process_decimal_value
#

scoreboard players set ::in min 0
scoreboard players set ::in max 100
execute store result score ::world_handler::chunk_scheduling temp0 run function random:rand
execute if score ::world_handler::chunk_scheduling temp0 >= ::world_handler::chunk_scheduling ticked_chunks_per_tick run scoreboard players set ::world_handler::chunk_scheduling ticked_chunks_per_tick 0
execute if score ::world_handler::chunk_scheduling temp0 < ::world_handler::chunk_scheduling ticked_chunks_per_tick run scoreboard players set ::world_handler::chunk_scheduling ticked_chunks_per_tick 1
