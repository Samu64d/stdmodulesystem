#
# collections:referenced_map/get_key_reference/get
#

$return run data modify storage io: value_ref set value '$(map_ref).$(key)'
