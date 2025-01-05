#
# utils:enum_directions/define/define
#

# Declare module
#define score_holder ::utils::enum_directions
#define score_holder ::utils::enum_directions::const

scoreboard objectives add DOWN dummy
scoreboard objectives add UP dummy
scoreboard objectives add NORTH dummy
scoreboard objectives add SOUTH dummy
scoreboard objectives add WEST dummy
scoreboard objectives add EAST dummy

scoreboard players set ::utils::enum_directions DOWN 0
scoreboard players set ::utils::enum_directions UP 1
scoreboard players set ::utils::enum_directions NORTH 2
scoreboard players set ::utils::enum_directions SOUTH 3
scoreboard players set ::utils::enum_directions WEST 4
scoreboard players set ::utils::enum_directions EAST 5

# Define variables
scoreboard objectives add direction dummy
scoreboard objectives add value dummy
