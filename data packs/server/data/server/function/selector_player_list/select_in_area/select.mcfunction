#
# server:selector_player_list/select_in_area/select
#

$execute in $(dimension) as @a[x=$(x), y=$(y), z=$(z), dx=$(dx), dy=$(dy), dz=$(dz)] run function server:selector_player_list/common/on_found with storage io:
