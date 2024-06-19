#
# collections:referenced_map/get_key/get
#

$return run data modify storage io: value set from storage $(map_ref).'$(key)'
