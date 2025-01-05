#
# collections:referenced_iterable_map/for_each_key/get_last_key
#

$data modify storage collections:volatile referenced_iterable_map.current_key set from $(iterable_map_ref).last_key
