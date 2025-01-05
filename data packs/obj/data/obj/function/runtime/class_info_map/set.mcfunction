#
# obj:runtime/class_info_map/set
#
# Set a class info object at the class info map
#> Storage
#  @class_info (in): the class info object
#> Return void

data modify storage io: iterable_map_ref set value "storage obj:volatile runtime.class_info_map"
function obj:runtime/referenced_registered_class_descriptor/get_class_name
data modify storage io: key set from storage io: class_info.name
data modify storage io: value_ref set value "storage io: class_info"
return run function collections:referenced_iterable_map/set_key
