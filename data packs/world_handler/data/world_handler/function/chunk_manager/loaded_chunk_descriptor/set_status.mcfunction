#
# world_handler:chunk_manager/loaded_chunk_descriptor/set_status
#
# Set the status of a loaded chunk descriptor
#> Scores
#  @status (in): the status
#> Storage
#  @loaded_chunk_descriptor (in): the loaded chunk descriptor
#> Return void

execute store result storage io: loaded_chunk_descriptor.status int 1.0 run scoreboard players get ::in status
