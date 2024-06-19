#
# world_handler:forceloaded_chunks_manager/loading/unload_expired/update_new_expire_time
#

# Get expire time
execute store result score ::world_handler::forceloaded_chunks_manager expire_time run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_expire_time

# Update new expire time on success
execute unless score ::world_handler::forceloaded_chunks_manager expire_time matches -1 if score ::world_handler::forceloaded_chunks_manager expire_time < ::world_handler::forceloaded_chunks_manager new_expire_time run scoreboard players operation ::world_handler::forceloaded_chunks_manager new_expire_time = ::world_handler::forceloaded_chunks_manager expire_time
execute unless score ::world_handler::forceloaded_chunks_manager expire_time matches -1 if score ::world_handler::forceloaded_chunks_manager new_expire_time matches -1 run scoreboard players operation ::world_handler::forceloaded_chunks_manager new_expire_time = ::world_handler::forceloaded_chunks_manager expire_time
