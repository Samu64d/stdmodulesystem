#
# collections:referenced_set_multimap/common/get_key_value_reference
#

$data modify storage io: set_ref set value "$(map_ref).'$(key)'"
