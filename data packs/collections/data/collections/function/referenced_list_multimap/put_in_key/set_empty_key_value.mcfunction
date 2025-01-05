#
# collections:referenced_list_multimap/put_in_key/set_empty_key_value
#

data modify storage io: list_ref set value "storage collections:volatile referenced_list_multimap.temp_list"
function collections:referenced_list/new
function collections:referenced_list_multimap/put_all_in_key
