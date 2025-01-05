#
# minecraft_world_api:chunk/define/const
#

scoreboard objectives add CHUNK_X_SIZE dummy
scoreboard objectives add CHUNK_Z_SIZE dummy

scoreboard players set ::minecraft_world_api::chunk::const CHUNK_X_SIZE 16

scoreboard players set ::minecraft_world_api::chunk::const CHUNK_Z_SIZE 16
