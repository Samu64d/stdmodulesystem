#
# obj:runtime/class_info_map/clear
#
# Clear the class info map
#> Return void

data modify storage io: iterable_map_ref set value "storage obj:volatile runtime.class_info_map"
function collections:referenced_iterable_map/clear
