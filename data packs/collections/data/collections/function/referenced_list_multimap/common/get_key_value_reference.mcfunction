#
# collections:referenced_list_multimap/common/get_key_value_reference
#

$data modify storage io: list_ref set value "$(map_ref).'$(key)'"
