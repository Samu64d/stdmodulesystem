#
# obj:runtime/registered_class_map/clear
#
# Clear the registered class map
#> Return void

data modify storage io: map_ref set value "storage obj:volatile runtime.registered_class_map"
function collections:referenced_map/clear
