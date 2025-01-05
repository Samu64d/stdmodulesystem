#
# obj:runtime/class_register
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: class_info"
function stdmodulesystem:stack/push

# Build runtime methods table
function obj:runtime/class_register/build_runtime_method_table

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: class_info"
function stdmodulesystem:stack/pop

# Create registered class descriptor
data modify storage io: registered_class_descriptor_ref set value "storage obj:volatile runtime.temp_registered_class_descriptor"
data modify storage io: class_name set from storage io: class_info.name
data modify storage io: class_path set from storage io: class_info.class_path
execute store result score ::in abstract_flag run data get storage io: class_info.abstract 1.0
data remove storage io: superclass_name
data modify storage io: superclass_name set from storage io: class_info.extends
function obj:runtime/referenced_registered_class_descriptor/new

# Set the registered class descriptor at the registered class map
function obj:runtime/registered_class_map/set
