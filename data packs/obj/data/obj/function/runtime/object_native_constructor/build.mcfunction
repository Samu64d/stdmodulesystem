#
# obj:runtime/object_native_constructor/build
#

# Set class name
data modify entity @s data.class_name set from storage io: class_name

# Set superclass name
execute if function obj:runtime/referenced_registered_class_descriptor/get_superclass_name run data modify entity @s data.superclass_name set from storage io: superclass_name

# Set class tag
data modify storage io: tag set value "obj.is_class"
function minecraft_entity_api:tag/add_tag

# Set class pointer
function minecraft_entity_api:entity/get_uuid_as_string
data modify entity @s data.pointer set from storage io: uuid

# Invoke class constructor
data modify storage io: method set from storage obj:static runtime.CLASS_CONSTRUCTOR_NAME
function obj:invoke

# Return pointer
data modify storage io: pointer set from entity @s data.pointer
