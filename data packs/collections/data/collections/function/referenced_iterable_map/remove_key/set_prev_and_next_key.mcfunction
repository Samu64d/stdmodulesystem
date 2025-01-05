#
# collections:referenced_iterable_map/remove_key/set_prev_and_next_key
#

# Set previous key next key
$data modify $(iterable_map_ref).data.'$(prev_key)'.next_key set value '$(next_key)'

# Set next key previous key
$data modify $(iterable_map_ref).data.'$(next_key)'.prev_key set value '$(prev_key)'
