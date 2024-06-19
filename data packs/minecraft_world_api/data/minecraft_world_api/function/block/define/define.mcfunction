#
# minecraft_world_api:block/define/define
#

# Declare module
#define score_holder ::minecraft_world_api::block
#define score_holder ::minecraft_world_api::block::const

# Define variables
scoreboard objectives add success dummy

scoreboard objectives add property_value dummy

function minecraft_world_api:block/utils/define/define
