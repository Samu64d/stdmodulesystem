#
# server:selector_entity_list/select_in_area/select
#

$execute in $(dimension) as @e[x=$(x), y=$(y), z=$(z), dx=$(dx), dy=$(dy), dz=$(dz)] run function server:selector_entity_list/common/on_found with storage io:
