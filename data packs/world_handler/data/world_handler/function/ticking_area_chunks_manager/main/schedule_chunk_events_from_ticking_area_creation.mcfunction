#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_creation
#
# Schedule chunk events from a creation of a ticking area
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return void

# Iterate through the chunk list
data modify storage io: callback set value "world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_creation/callback"
function world_handler:ticking_areas_manager/ticking_area_descriptor/for_each_chunk
