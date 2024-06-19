#
# world_handler:chunk_scheduling/scheduled_chunk_list/get_count
#
# Get the count of scheduled chunk descriptors inside the scheduled chunk list
#> Return data
#  chunk event descriptor count

data modify storage io: list_ref set value "world_handler:volatile chunk_scheduling.scheduled_chunk_list"
return run function collections:referenced_list/get_length
