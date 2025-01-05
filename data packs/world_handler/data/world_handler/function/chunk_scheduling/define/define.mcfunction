#
# world_handler:chunk_scheduling/define/define
#

# Declare module
#define score_holder ::world_handler::chunk_scheduling
#define score_holder ::world_handler::chunk_scheduling::const

# Define variables
scoreboard objectives add ticked_chunks_per_tick dummy
scoreboard objectives add last_scheduled_chunk_count dummy
scoreboard objectives add chunk_scheduling_attempts dummy
