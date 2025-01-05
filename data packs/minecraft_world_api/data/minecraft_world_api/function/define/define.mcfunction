#
# minecraft_world_api:define/define
#

# Declare module
#define score_holder ::minecraft_world_api
#define score_holder ::minecraft_world_api::const

# Declare storage
#define storage minecraft_world_api:static
#define storage minecraft_world_api:volatile
#define storage minecraft_world_api:data

# Define variables
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add x0 dummy
scoreboard objectives add y0 dummy
scoreboard objectives add z0 dummy
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy

# Other modules definitions
function minecraft_world_api:biome/define/define
function minecraft_world_api:block/define/define
function minecraft_world_api:chunk/define/define
function minecraft_world_api:fluid/define/define
function minecraft_world_api:layout/define/define
function minecraft_world_api:light/define/define
function minecraft_world_api:structure/define/define
function minecraft_world_api:weather/define/define
function minecraft_world_api:worldborder/define/define
