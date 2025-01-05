#
# obj:runtime/class_register/build_runtime_method_table/process_superclass_loop
#

# Load superclass info
data modify storage io: class_name set from storage io: class_info.extends
execute unless function obj:runtime/class_info_map/get_by_class_name run return 0

# Resolve class runtime methods
data modify storage io: list_ref set value "storage io: class_info.runtime_method_list"
data modify storage io: callback set value "obj:runtime/class_register/build_runtime_method_table/process_runtime_method"
data modify storage io: class_path set from storage io: class_info.class_path

function collections:referenced_list/for_each

# Resolve superclass runtime methods
execute if data storage io: class_info.extends run function obj:runtime/class_register/build_runtime_method_table/process_superclass_loop

# Loop
