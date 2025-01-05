#
# stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies
#

# Set flag default value
scoreboard players operation ::stdmodulesystem::datapack_manager check_success = ::const TRUE

# Get datapack dependency list
function stdmodulesystem:api/get_datapack_dependencies

# Iterate through the list
data modify storage io: list_ref set value "storage io: dependency_list"
data modify storage io: callback set value "stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies/check_available"
function stdmodulesystem:utils/referenced_list/for_each

# Return data
return run scoreboard players get ::stdmodulesystem::datapack_manager check_success
