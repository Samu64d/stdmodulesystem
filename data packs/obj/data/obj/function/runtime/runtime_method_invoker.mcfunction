#
# obj:runtime/runtime_method_invoker
#

# Get class name
data modify storage io: class_name set from entity @s data.class_name

# Get registered class descriptor
function obj:runtime/registered_class_map/get_by_class_name

# Get runtime method path
execute unless function obj:runtime/referenced_registered_class_descriptor/get_runtime_method_path run return fail

# Invoke runtime method
return run function obj:runtime/runtime_method_invoker/invoke with storage io:
