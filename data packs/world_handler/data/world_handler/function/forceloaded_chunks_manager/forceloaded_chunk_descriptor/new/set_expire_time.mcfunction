#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/new/set_expire_time
#

# Get game time
execute store result score ::world_handler::forceloaded_chunks_manager temp0 run function time:mc_time/get_game_time

# Calculate expire time
scoreboard players operation ::world_handler::forceloaded_chunks_manager expire_time = ::in tick
scoreboard players operation ::world_handler::forceloaded_chunks_manager expire_time += ::world_handler::forceloaded_chunks_manager temp0
execute store result storage io: forceloaded_chunk_descriptor.expire_time int 1.0 run scoreboard players get ::world_handler::forceloaded_chunks_manager expire_time
