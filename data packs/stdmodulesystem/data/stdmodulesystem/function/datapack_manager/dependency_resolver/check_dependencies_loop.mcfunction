#
# stdmodulesystem:datapack_manager/dependency_resolver/check_dependencies_loop
#

# Reset missing dependencies found flag
scoreboard players operation ::stdmodulesystem::datapack_manager missing_dependencies_found = ::const FALSE

# Check all datapacks dependencies
data modify storage io: callback set value "stdmodulesystem:datapack_manager/dependency_resolver/process_datapack_for_checking"
function stdmodulesystem:datapack_manager/available_datapack_listmap/for_each

# Check for missing dependencies found
execute if score ::stdmodulesystem::datapack_manager missing_dependencies_found = ::const TRUE run function stdmodulesystem:datapack_manager/dependency_resolver/check_dependencies_loop

# Loop
