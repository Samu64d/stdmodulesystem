#
# collections:referenced_iterable_map/for_each_key/get_key_prev_key
#

$data modify storage io: key_prev_key.key set from $(iterable_map_ref).data.'$(key)'.prev_key
