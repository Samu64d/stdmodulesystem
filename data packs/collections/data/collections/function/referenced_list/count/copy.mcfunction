#
# collections:referenced_list/count/copy
#

$data modify storage collections:volatile referenced_list.temp_list set from $(list_ref)
$execute store result score ::collections::referenced_list modified_elements run data modify storage collections:volatile referenced_list.temp_list[] set from $(element_ref)
