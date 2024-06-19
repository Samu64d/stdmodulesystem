#
# context:define/enum_executor_types
#

#define score_holder ::context::enum_executor_types

scoreboard objectives add SERVER dummy
scoreboard objectives add PLAYER dummy
scoreboard objectives add ENTITY dummy

scoreboard players set ::context::enum_executor_types SERVER 0
scoreboard players set ::context::enum_executor_types PLAYER 1
scoreboard players set ::context::enum_executor_types ENTITY 2
