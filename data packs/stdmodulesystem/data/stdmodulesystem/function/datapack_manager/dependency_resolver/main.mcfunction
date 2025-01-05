#
# stdmodulesystem:datapack_manager/dependency_resolver/main
#

# Force load all datapacks dependencies
data modify storage io: callback set value "stdmodulesystem:datapack_manager/dependency_resolver/process_datapack_for_loading"
execute if score ::stdmodulesystem::datapack_manager::const FORCE_ENABLE_DEPENDENCIES = ::const TRUE run function stdmodulesystem:datapack_manager/available_datapack_listmap/for_each

# Check for first tick flag
execute if score ::stdmodulesystem need_reload = ::const TRUE run return 0

# Check all datapacks dependencies
function stdmodulesystem:datapack_manager/dependency_resolver/check_dependencies_loop
