#
# world_handler:chunk_manager/define/define
#

# Declare module
#define score_holder ::world_handler::chunk_manager
#define score_holder ::world_handler::chunk_manager::const

# Define variables
scoreboard objectives add last_event_time dummy

scoreboard objectives add status dummy

scoreboard objectives add success dummy

scoreboard objectives add pending_loaded_chunk_count dummy
scoreboard objectives add loaded_chunk_count dummy
scoreboard objectives add forceloaded dummy

# Enumeration
function world_handler:chunk_manager/define/enum_loaded_chunk_status
