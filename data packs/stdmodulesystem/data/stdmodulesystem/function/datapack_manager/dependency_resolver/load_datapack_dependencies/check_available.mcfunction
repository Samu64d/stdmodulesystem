#
# stdmodulesystem:datapack_manager/dependency_resolver/load_datapack_dependencies/check_available
#

data modify storage io: datapack_id set from storage io: element.id

# Check if datapack is available
execute unless function stdmodulesystem:api/is_datapack_available_and_module run function stdmodulesystem:datapack_manager/dependency_resolver/load_datapack_dependencies/try_enable
