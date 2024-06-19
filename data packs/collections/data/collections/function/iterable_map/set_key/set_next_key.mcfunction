#
# collections:iterable_map/set_key/set_next_key
#

$data modify storage io: iterable_map.data.'$(prev_key)'.next_key set value '$(key)'
