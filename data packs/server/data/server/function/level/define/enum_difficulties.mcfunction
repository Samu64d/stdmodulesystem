#
# server:level/define/enum_difficulties
#

#define score_holder ::server::level::enum_difficulties

scoreboard objectives add PEACEFUL dummy
scoreboard objectives add EASY dummy
scoreboard objectives add NORMAL dummy
scoreboard objectives add HARD dummy

scoreboard players set ::server::level::enum_difficulties PEACEFUL 0
scoreboard players set ::server::level::enum_difficulties EASY 1
scoreboard players set ::server::level::enum_difficulties NORMAL 2
scoreboard players set ::server::level::enum_difficulties HARD 3
