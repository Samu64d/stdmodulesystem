#
# collections:referenced_iterable_map/for_each/update_current_key
#

$data modify storage collections:volatile referenced_iterable_map.current_key set value '$(prev_key)'
