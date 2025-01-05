#
# stdmodulesystem:datapack_manager/dependency_resolver/load_datapack_dependencies/on_enabled
#

# Set flag value
scoreboard players operation ::stdmodulesystem need_reload = ::const TRUE

# Display message
tellraw @a ["", {"text": "[Stdmodulesystem] [Warning] Datapack with id ", "color": "yellow"}, {"nbt": "datapack_id", "storage": "io:"}, {"text": " required as a dependencies was disabled. Datapack was enabled", "color": "yellow"}]
