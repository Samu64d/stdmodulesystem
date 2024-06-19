#
# stdmodulesystem:api/is_datapack_available_and_module/is_available_and_module
#

scoreboard players operation ::stdmodulesystem::datapack success = ::const FALSE
$execute store result score ::stdmodulesystem::datapack success run function $(datapack_id):stdmodulesystem/get_datapack_manifest
return run scoreboard players get ::stdmodulesystem::datapack success
