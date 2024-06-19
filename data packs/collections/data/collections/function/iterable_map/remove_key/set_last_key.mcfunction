#
# collections:iterable_map/remove_key/set_last_key
#

$data modify storage io: iterable_map.last_key set value '$(prev_key)'
