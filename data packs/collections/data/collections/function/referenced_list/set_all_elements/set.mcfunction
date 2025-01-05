#
# collections:referenced_list/set_all_elements/set
#

$execute store success score ::collections::referenced_list success run data modify $(list_ref)[] set from $(element_ref)
return run scoreboard players get ::collections::referenced_list success
