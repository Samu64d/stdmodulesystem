#
# collections:referenced_set_multimap/put_in_key/set_empty_key_value
#

data modify storage io: set_ref set value "storage collections:volatile referenced_set_multimap.temp_set"
function collections:referenced_set/new
function collections:referenced_set_multimap/put_all_in_key
