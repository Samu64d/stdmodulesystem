#
# stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies/check_available
#

data modify storage io: datapack_id set from storage io: element.id

# Check for datapack available
execute store result score ::stdmodulesystem::datapack_manager success run function stdmodulesystem:api/is_datapack_available_and_module

# On datapack not load
execute if score ::stdmodulesystem::datapack_manager success = ::const FALSE run scoreboard players operation ::stdmodulesystem::datapack_manager check_success = ::const FALSE

# On datapack available
execute if score ::stdmodulesystem::datapack_manager success = ::const TRUE run function stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies/check_status
