#
# world_handler:ticking_area_chunks_manager/define/enum_chunk_events
#

#define score_holder ::world_handler::ticking_area_chunks_manager::enum_chunk_events

scoreboard objectives add IN_AREA dummy
scoreboard objectives add OUT_AREA dummy

scoreboard players set ::world_handler::ticking_area_chunks_manager::enum_chunk_events IN_AREA 0
scoreboard players set ::world_handler::ticking_area_chunks_manager::enum_chunk_events OUT_AREA 1
