#
# collections:referenced_iterable_map/remove_key/remove
#

# Clear previous and next key
data remove storage io: prev_key
data remove storage io: next_key

# Get previous and next key
$execute if data $(iterable_map_ref).data.'$(key)'.prev_key run data modify storage io: prev_key set from $(iterable_map_ref).data.'$(key)'.prev_key
$execute if data $(iterable_map_ref).data.'$(key)'.next_key run data modify storage io: next_key set from $(iterable_map_ref).data.'$(key)'.next_key

# Check case

# In the head
execute if data storage io: next_key unless data storage io: prev_key run function collections:referenced_iterable_map/remove_key/remove_prev_key with storage io:

# Inside
execute if data storage io: next_key if data storage io: prev_key run function collections:referenced_iterable_map/remove_key/set_prev_and_next_key with storage io:

# In the tail
execute if data storage io: prev_key unless data storage io: next_key run function collections:referenced_iterable_map/remove_key/remove_next_key with storage io:

# Set last key
execute if data storage io: prev_key unless data storage io: next_key run function collections:referenced_iterable_map/remove_key/set_last_key with storage io:

# Remove last key
execute unless data storage io: prev_key unless data storage io: next_key run function collections:referenced_iterable_map/remove_key/remove_last_key with storage io:

# Remove value
$data remove $(iterable_map_ref).data.'$(key)'
