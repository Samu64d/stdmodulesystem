#
# collections:referenced_iterable_map/remove_key/set_last_key
#

$data modify $(iterable_map_ref).last_key set value '$(prev_key)'
