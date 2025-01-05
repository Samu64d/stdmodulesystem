#
# minecraft_world_api:block/utils/define/define
#

# Declare module
#define score_holder ::minecraft_world_api::block::utils
#define score_holder ::minecraft_world_api::block::utils::const

# Define variables
scoreboard objectives add count_limit dummy
scoreboard objectives add match_count dummy
scoreboard objectives add area_min_x dummy
scoreboard objectives add area_min_y dummy
scoreboard objectives add area_min_z dummy
scoreboard objectives add area_max_x dummy
scoreboard objectives add area_max_y dummy
scoreboard objectives add area_max_z dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add match_success dummy

scoreboard objectives add attempts_limit dummy
scoreboard objectives add spread_count dummy
scoreboard objectives add spread_attempts dummy

scoreboard objectives add every_node dummy
