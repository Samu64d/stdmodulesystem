#
# collections:iterable_map/set_key/set_prev_key
#

# Set previous key value
$data modify storage io: iterable_map.data.'$(key)'.prev_key set from storage io: iterable_map.last_key

# Set previous key next key value
data modify storage io: prev_key set from storage io: iterable_map.last_key
function collections:iterable_map/set_key/set_next_key with storage io:
