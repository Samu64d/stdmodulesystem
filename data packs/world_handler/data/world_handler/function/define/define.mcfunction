#
# world_handler:define/define
#

# Declare module
#define score_holder ::world_handler
#define score_holder ::world_handler::const

# Declare storage
#define storage world_handler:static
#define storage world_handler:volatile
#define storage world_handler:data

# Define variables
scoreboard objectives add x dummy
scoreboard objectives add z dummy

# Other modules definitions
function world_handler:chunk_manager/define/define
function world_handler:chunk_scheduling/define/define
function world_handler:forceloaded_chunks_manager/define/define
function world_handler:ticking_area_chunks_manager/define/define
function world_handler:ticking_areas_manager/define/define
function world_handler:world_spawn_manager/define/define
