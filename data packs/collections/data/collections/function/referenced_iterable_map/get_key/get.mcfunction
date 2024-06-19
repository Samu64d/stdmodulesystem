#
# collections:referenced_iterable_map/get_key/get
#

$return run data modify storage io: value set from storage $(iterable_map_ref).data.'$(key)'.value
