#
# stdmodulesystem:datapack_manager/dependency_resolver/process_datapack_for_checking
#

# Get avilable datapack
function stdmodulesystem:datapack_manager/available_datapack_listmap/get_by_id

# Check status
execute store result score ::stdmodulesystem::datapack_manager status run function stdmodulesystem:datapack_manager/available_datapack/get_status
execute if score ::stdmodulesystem::datapack_manager status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status DEPENDENCY_ERROR run return 0

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: available_datapack"
function stdmodulesystem:stack/push

# Check for dependencies
function stdmodulesystem:datapack_manager/available_datapack/get_datapack_id
execute store result score ::stdmodulesystem::datapack_manager temp0 run function stdmodulesystem:datapack_manager/dependency_resolver/check_datapack_dependencies

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: available_datapack"
function stdmodulesystem:stack/pop

# If missing dependencies were found
execute if score ::stdmodulesystem::datapack_manager temp0 = ::const FALSE run function stdmodulesystem:datapack_manager/dependency_resolver/on_dependency_missing
