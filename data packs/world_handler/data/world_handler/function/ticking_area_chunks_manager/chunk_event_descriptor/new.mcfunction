#
# world_handler:ticking_area_chunks_manager/chunk_event_descriptor/new
#
# Create a new chunk event descriptor
#> Scores
#  @event (in): chunk event id
#  @forceloaded (in): boolean flag
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @chunk_event_descriptor (out): the chunk event descriptor
#> Return void

# Create object
data modify storage io: chunk_event_descriptor set value {chunk: {}, event: -1, forceloaded: false}

# Set chunk
data modify storage io: chunk_event_descriptor.chunk set from storage io: chunk_descriptor

# Set event
execute store result storage io: chunk_event_descriptor.event int 1.0 run scoreboard players get ::in event

# Set forceloaded
execute store result storage io: chunk_event_descriptor.forceloaded byte 1.0 run scoreboard players get ::in forceloaded
