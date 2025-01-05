#
# stdmodulesystem:datapack_manager/dependency_resolver/on_dependency_missing
#

# Set datapack status to error

# Update status
scoreboard players operation ::in status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status DEPENDENCY_ERROR
function stdmodulesystem:datapack_manager/available_datapack/set_status

# Set the datapack
function stdmodulesystem:datapack_manager/available_datapack/get_datapack_id
function stdmodulesystem:datapack_manager/available_datapack_listmap/update_by_id

# Set missing dependencies found flag
scoreboard players operation ::stdmodulesystem::datapack_manager missing_dependencies_found = ::const TRUE

# Display message
tellraw @a ["", {"text": "[Stdmodulesystem] [Error] Datapack with id ", "color": "red"}, {"nbt": "datapack_id", "storage": "io:"}, {"text": " missing dependencies. Datapack was not booted", "color": "red"}]
