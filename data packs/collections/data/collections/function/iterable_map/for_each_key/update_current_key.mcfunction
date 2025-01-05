#
# collections:iterable_map/for_each_key/update_current_key
#

$data modify storage collections:volatile iterable_map.current_key set value '$(prev_key)'
