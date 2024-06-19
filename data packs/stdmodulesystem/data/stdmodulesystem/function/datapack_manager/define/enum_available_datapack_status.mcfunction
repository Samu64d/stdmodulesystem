#
# stdmodulesystem:datapack_manager/define/enum_available_datapack_status
#

#define score_holder ::stdmodulesystem::datapack_manager::enum_available_datapack_status

scoreboard objectives add DEPENDENCY_ERROR dummy
scoreboard objectives add UNBOOTED dummy
scoreboard objectives add BOOT dummy
scoreboard objectives add TICKED dummy

scoreboard players set ::stdmodulesystem::datapack_manager::enum_available_datapack_status DEPENDENCY_ERROR -1
scoreboard players set ::stdmodulesystem::datapack_manager::enum_available_datapack_status UNBOOTED 0
scoreboard players set ::stdmodulesystem::datapack_manager::enum_available_datapack_status BOOT 1
scoreboard players set ::stdmodulesystem::datapack_manager::enum_available_datapack_status TICKED 3
