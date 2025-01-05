#
# obj:runtime/class_info_register
#

# Get the class info object
function obj:runtime/class_register/get_class_info with storage io:
execute if score ::obj::runtime success = ::const FALSE run return run scoreboard players get ::const FALSE

# Parse object

# Class name
execute unless data storage io: class_info.name run return run scoreboard players get ::const FALSE

# Set class path
data modify storage io: class_info.class_path set from storage io: class_path

# Superclass name
execute unless data storage io: class_info{name: "obj:obj"} unless data storage io: class_info.extends run return run scoreboard players get ::const FALSE

# Abstract flag
execute unless data storage io: class_info.abstract run data modify storage io: class_info.abstract set value false

# Runtime method list
data modify storage io: list_ref set value "storage io: class_info.runtime_method_list"
execute unless data storage io: class_info.runtime_method_list run function collections:referenced_list/new

# Set the class info object at the class info map
function obj:runtime/class_info_map/set
