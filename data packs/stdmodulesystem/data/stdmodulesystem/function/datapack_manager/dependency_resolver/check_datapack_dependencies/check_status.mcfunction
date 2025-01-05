#
# stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies/check_status
#

# Check for datapack not in dependency error status
function stdmodulesystem:datapack_manager/available_datapack_listmap/get_by_id
execute store result score ::stdmodulesystem::datapack_manager status run function stdmodulesystem:datapack_manager/available_datapack/get_status
execute store success score ::stdmodulesystem::datapack_manager success if score ::stdmodulesystem::datapack_manager status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status UNBOOTED

# On datapack status dependency error
execute if score ::stdmodulesystem::datapack_manager success = ::const FALSE run scoreboard players operation ::stdmodulesystem::datapack_manager check_success = ::const FALSE

# On datapack status unbooted
execute if score ::stdmodulesystem::datapack_manager success = ::const TRUE run function stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies/check_version
