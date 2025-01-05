#
# collections:referenced_iterable_map/get_key_reference/get
#

$return run data modify storage io: value_ref set value '$(iterable_map_ref).data.$(key).value'
