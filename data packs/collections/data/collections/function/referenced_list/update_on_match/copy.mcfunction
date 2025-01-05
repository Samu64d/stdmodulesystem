#
# collections:referenced_list/update_on_match/copy
#

$data modify storage collections:volatile referenced_list.temp_element set from $(element_ref)
