#
# obj:runtime/class_register/build_runtime_method_table/process_runtime_method
#

data modify storage io: map_ref set value "storage io: runtime_method_table"
data modify storage io: key set from storage io: element

# Return if the runtime method table has already the runtime method
execute if function collections:referenced_map/has_key run return 0

# Add the runtime method to the runtime method table
data modify storage io: runtime_method_name set from storage io: element
function obj:runtime/class_register/build_runtime_method_table/get_runtime_method_path with storage io:
data modify storage io: value_ref set value "storage io: runtime_method_path"
function collections:referenced_map/set_key
