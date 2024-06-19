#
# stdmodulesystem:datapack/enable/enable
#

$execute store success score ::stdmodulesystem::datapack success run datapack enable "$(datapack_name)"
return run scoreboard players get ::stdmodulesystem::datapack success
