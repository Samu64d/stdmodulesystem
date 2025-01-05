#
# collections:referenced_set/contains/copy
#

$data modify storage collections:volatile referenced_set.temp_set set from $(set_ref)
$return run data modify storage collections:volatile referenced_set.temp_set[] set from $(element_ref)
