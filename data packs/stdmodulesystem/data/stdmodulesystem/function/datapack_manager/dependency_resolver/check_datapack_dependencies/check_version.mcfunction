#
# stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies/check_version
#

# Get version
execute store result score ::stdmodulesystem::datapack_manager dependency_version run data get storage io: element.version 1.0

# Check for datapack version
data modify storage io: datapack_id set from storage io: element.id
execute store result score ::stdmodulesystem::datapack_manager datapack_version run function stdmodulesystem:api/get_datapack_version

# Update flag
execute unless score ::stdmodulesystem::datapack_manager dependency_version = ::stdmodulesystem::datapack_manager datapack_version run scoreboard players operation ::stdmodulesystem::datapack_manager check_success = ::const FALSE
