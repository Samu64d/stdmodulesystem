#
# obj:runtime/object_native_constructor
#

# Get registered class descriptor
data modify storage io: registered_class_descriptor_ref set value "storage obj:volatile runtime.temp_registered_class_descriptor"
function obj:runtime/registered_class_map/get_by_class_name

# Check for abstract flag
execute if function obj:runtime/referenced_registered_class_descriptor/get_abstract_flag run return 0

# Create entity
data modify storage io: type set value "minecraft:marker"
data modify storage io: callback set value "obj:runtime/object_native_constructor/build"
function minecraft_entity_api:entity/new
