#
# world_handler:chunk_manager/define/enum_loaded_chunk_status
#

#define score_holder ::world_handler::chunk_manager::enum_loaded_chunk_status

scoreboard objectives add WAIT_LOAD dummy
scoreboard objectives add LOADED dummy
scoreboard objectives add WAIT_UNLOAD dummy
scoreboard objectives add UNLOADED dummy
scoreboard objectives add UNKNOW dummy
scoreboard objectives add UNKNOW_LOADED dummy

scoreboard players set ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_LOAD 0
scoreboard players set ::world_handler::chunk_manager::enum_loaded_chunk_status LOADED 1
scoreboard players set ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_UNLOAD 2
scoreboard players set ::world_handler::chunk_manager::enum_loaded_chunk_status UNLOADED 3
scoreboard players set ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW 4
scoreboard players set ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW_LOADED 5
