#
# world_handler:forceloaded_chunks_manager/define/define
#

# Declare module
#define score_holder ::world_handler::forceloaded_chunks_manager
#define score_holder ::world_handler::forceloaded_chunks_manager::const

# Define variables
scoreboard objectives add tick dummy
scoreboard objectives add persistent dummy
scoreboard objectives add is_loaded dummy

scoreboard objectives add expire_time dummy
scoreboard objectives add is_expired dummy

scoreboard objectives add success dummy

scoreboard objectives add revalidate dummy

scoreboard objectives add loading_success dummy
scoreboard objectives add game_time dummy
scoreboard objectives add need_scan dummy
scoreboard objectives add new_expire_time dummy
scoreboard objectives add unloading_success dummy

scoreboard objectives add forceloaded_chunk_count dummy
