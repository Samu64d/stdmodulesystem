#
# world_handler:ticking_area_chunks_manager/chunk_event_consumer/job_manager
#

# Load controller

# Check for first tick
execute if function stdmodulesystem:api/is_first_tick run function world_handler:ticking_area_chunks_manager/chunk_event_consumer/controllers/synchronous
execute if function stdmodulesystem:api/is_first_tick run return 0

# Default
execute if score ::world_handler::ticking_area_chunks_manager::const CHUNK_EVENT_SCHEDULING_ASYNC = ::const FALSE run function world_handler:ticking_area_chunks_manager/chunk_event_consumer/controllers/synchronous

# Asynchronous
execute if score ::world_handler::ticking_area_chunks_manager::const CHUNK_EVENT_SCHEDULING_ASYNC = ::const TRUE run function world_handler:ticking_area_chunks_manager/chunk_event_consumer/controllers/asynchronous
