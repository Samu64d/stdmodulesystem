#
# obj:runtime/registered_class_map/set
#
# Set a registered class descriptor at the registered class map
#> Storage
#  @registered_class_descriptor_ref (in): the registered class descriptor reference
#> Return void

data modify storage io: map_ref set value "storage obj:volatile runtime.registered_class_map"
function obj:runtime/referenced_registered_class_descriptor/get_class_name
data modify storage io: key set from storage io: class_name
data modify storage io: value_ref set from storage io: registered_class_descriptor_ref
return run function collections:referenced_map/set_key
