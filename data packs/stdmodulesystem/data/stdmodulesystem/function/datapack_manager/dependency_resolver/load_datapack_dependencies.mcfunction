#
# stdmodulesystem:datapack_manager/dependency_resolver/load_datapack_dependencies
#

# Get dependencies list
function stdmodulesystem:api/get_datapack_dependencies

# Iterate through the list
data modify storage io: list_ref set value "storage io: dependency_list"
data modify storage io: callback set value "stdmodulesystem:datapack_manager/dependency_resolver/load_datapack_dependencies/check_available"
function stdmodulesystem:utils/referenced_list/for_each
