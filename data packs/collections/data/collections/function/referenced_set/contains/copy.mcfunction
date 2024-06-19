#
# collections:referenced_set/contains/copy
#

$data modify storage collections:volatile referenced_set.temp_set set from storage $(set_ref)
$return run data modify storage collections:volatile referenced_set.temp_set[] set from storage $(element_ref)
