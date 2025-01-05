#
# world_handler:ticking_area_chunks_manager/config/config
#

scoreboard objectives add CHUNK_EVENT_SCHEDULING_ASYNC dummy
scoreboard objectives add CHUNK_EVENT_SCHEDULING_ASYNC_RATE dummy

# Enable asynchronous chunk scheduling
scoreboard players operation ::world_handler::ticking_area_chunks_manager::const CHUNK_EVENT_SCHEDULING_ASYNC = ::const TRUE

# Chunk scheduled asynchronous events consumption speed
scoreboard players set ::world_handler::ticking_area_chunks_manager::const CHUNK_EVENT_SCHEDULING_ASYNC_RATE 32
