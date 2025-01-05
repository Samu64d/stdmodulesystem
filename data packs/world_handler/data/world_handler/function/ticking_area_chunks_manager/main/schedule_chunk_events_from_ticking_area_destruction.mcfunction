#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_destruction
#
# Schedule chunk events from a destruction of a ticking area
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return void

# Iterate through the chunk list
data modify storage io: callback set value "world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_destruction/callback"
function world_handler:ticking_areas_manager/ticking_area_descriptor/for_each_chunk
