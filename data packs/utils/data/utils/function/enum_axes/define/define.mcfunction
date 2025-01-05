#
# utils:enum_axes/define/define
#

# Declare module
#define score_holder ::utils::enum_axes
#define score_holder ::utils::enum_axes::const

# Define variables
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

scoreboard players set ::utils::enum_axes X 0
scoreboard players set ::utils::enum_axes Y 1
scoreboard players set ::utils::enum_axes Z 2
