#
# minecraft_world_api:light/define/const
#

scoreboard objectives add MIN_LIGHT_LEVEL dummy

scoreboard objectives add MAX_LIGHT_LEVEL dummy

scoreboard players set ::minecraft_world_api::light::const MIN_LIGHT_LEVEL 0

scoreboard players set ::minecraft_world_api::light::const MAX_LIGHT_LEVEL 15
