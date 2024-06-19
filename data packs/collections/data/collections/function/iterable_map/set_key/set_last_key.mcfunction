#
# collections:iterable_map/set_key/set_last_key
#

# Check if previous key is present
execute if data storage io: iterable_map.last_key run function collections:iterable_map/set_key/set_prev_key with storage io:

# Set last key value
$data modify storage io: iterable_map.last_key set value '$(key)'
