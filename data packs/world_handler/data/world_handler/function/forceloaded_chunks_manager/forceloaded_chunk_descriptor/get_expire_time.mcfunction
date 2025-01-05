#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_expire_time
#
# Get the expire time of a forceloaded chunk descriptor
#> Storage
#  @forceloaded_chunk_descriptor (in): the forceloaded chunk descriptor
#> Return data
#  expire time

return run data get storage io: forceloaded_chunk_descriptor.expire_time 1.0
