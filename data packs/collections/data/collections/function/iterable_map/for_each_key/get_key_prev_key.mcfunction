#
# collections:iterable_map/for_each_key/get_key_prev_key
#

$data modify storage io: key_prev_key.key set from storage io: iterable_map.data.'$(key)'.prev_key
