#
# server:level/define/const
#

scoreboard objectives add DEFAULT_RANDOM_TICK_SPEED dummy

scoreboard objectives add DEFAULT_DIFFICULTY dummy

scoreboard players set ::server::level::const DEFAULT_RANDOM_TICK_SPEED 2

scoreboard players operation ::server::level::const DEFAULT_DIFFICULTY = ::server::level::enum_difficulties NORMAL
