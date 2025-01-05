#
# obj:runtime/class_info_map/for_each
#
# Iterate through the class info map
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage obj:volatile runtime.temp_callback set from storage io: callback

# Iterate through the class info map
data modify storage io: iterable_map_ref set value "storage obj:volatile runtime.class_info_map"
data modify storage io: callback set value "obj:runtime/class_info_map/for_each/callback"
function collections:referenced_iterable_map/for_each
