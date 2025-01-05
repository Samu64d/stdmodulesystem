#
# collections:referenced_iterable_map/for_each/get_key_data
#

$data modify storage io: key_data set from $(iterable_map_ref).data.'$(key)'
