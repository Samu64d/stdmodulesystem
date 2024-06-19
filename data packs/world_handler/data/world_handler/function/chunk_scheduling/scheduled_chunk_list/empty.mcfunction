#
# world_handler:chunk_scheduling/scheduled_chunk_list/empty
#
# Empty the scheduled chunk list
#> Return void

data modify storage io: list_ref set value "world_handler:volatile chunk_scheduling.scheduled_chunk_list"
function collections:referenced_list/empty
