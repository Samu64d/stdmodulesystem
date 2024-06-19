#
# collections:referenced_iterable_map/set_key/set
#

$data modify storage $(iterable_map_ref).data.'$(key)'.value set from storage $(value_ref)
