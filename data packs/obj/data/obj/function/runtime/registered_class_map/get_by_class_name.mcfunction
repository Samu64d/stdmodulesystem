#
# obj:runtime/registered_class_map/get_by_class_name
#
# Get a registered class descriptor reference from the registered class map referencing a class name
#> Storage
#  @class_name (in): the class name
#  @registered_class_descriptor_ref (out): the registered class descriptor reference
#> Return void

data modify storage io: map_ref set value "storage obj:volatile runtime.registered_class_map"
data modify storage io: key set from storage io: class_name
function collections:referenced_map/get_key_reference
data modify storage io: registered_class_descriptor_ref set from storage io: value_ref
