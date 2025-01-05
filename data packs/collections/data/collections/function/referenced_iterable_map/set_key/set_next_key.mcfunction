#
# collections:referenced_iterable_map/set_key/set_next_key
#

$data modify $(iterable_map_ref).data.'$(prev_key)'.next_key set value '$(key)'
