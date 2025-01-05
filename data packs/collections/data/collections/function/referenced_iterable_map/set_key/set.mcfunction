#
# collections:referenced_iterable_map/set_key/set
#

$data modify $(iterable_map_ref).data.'$(key)'.value set from $(value_ref)
