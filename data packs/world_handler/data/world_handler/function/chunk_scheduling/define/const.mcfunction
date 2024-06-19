#
# world_handler:chunk_scheduling/define/const
#

scoreboard objectives add MAX_TICKING_CHUNK_COUNT dummy

# Max number of ticked chunks per tick
scoreboard players set ::world_handler::chunk_scheduling MAX_TICKING_CHUNK_COUNT 1024
