#
# collections:referenced_iterable_map/set_key/set_prev_key
#

# Set previous key value
$data modify $(iterable_map_ref).data.'$(key)'.prev_key set from $(iterable_map_ref).last_key

# Set previous key next key value
$data modify storage io: prev_key set from $(iterable_map_ref).last_key
function collections:referenced_iterable_map/set_key/set_next_key with storage io:
