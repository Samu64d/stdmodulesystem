#
# obj:runtime/referenced_registered_class_descriptor/new/new
#

# Create object
$data modify $(registered_class_descriptor_ref) set value {class_name: "null", class_path: "null", abstract_flag: false, runtime_method_table: {}}

# Set class name
$data modify $(registered_class_descriptor_ref).class_name set from storage io: class_name

# Set class path
$data modify $(registered_class_descriptor_ref).class_path set from storage io: class_path

# Set superclass name
$execute if data storage io: superclass_name run data modify $(registered_class_descriptor_ref).superclass_name set from storage io: superclass_name

# Set abstract flag
$execute store result $(registered_class_descriptor_ref).abstract_flag byte 1.0 run scoreboard players get ::in abstract_flag

# Set class runtime methods
$data modify $(registered_class_descriptor_ref).runtime_method_table set from storage io: runtime_method_table
