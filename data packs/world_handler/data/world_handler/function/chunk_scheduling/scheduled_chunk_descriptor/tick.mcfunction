#
# world_handler:chunk_scheduling/scheduled_chunk_descriptor/tick
#
# Tick a chunk matching a scheduled chunk descriptor
#> Storage
#  @scheduled_chunk_descriptor (in): the scheduled chunk descriptor
#> Return void

# Get chunk
function world_handler:chunk_scheduling/scheduled_chunk_descriptor/get_chunk

# Fire event
function world_handler:events/emitters/on_chunk_ticked
