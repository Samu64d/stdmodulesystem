#
# collections:referenced_iterable_map/set_key/set_last_key
#

# Check if previous key is present
$execute if data $(iterable_map_ref).last_key run function collections:referenced_iterable_map/set_key/set_prev_key with storage io:

# Set last key value
$data modify $(iterable_map_ref).last_key set value '$(key)'
