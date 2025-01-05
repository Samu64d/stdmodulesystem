#
# stdmodulesystem:datapack/disable/disable
#

$execute store success score ::stdmodulesystem::datapack success run datapack disable "$(datapack_name)"
return run scoreboard players get ::stdmodulesystem::datapack success
