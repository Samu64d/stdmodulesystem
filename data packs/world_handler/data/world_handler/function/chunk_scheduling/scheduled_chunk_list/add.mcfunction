#
# world_handler:chunk_scheduling/scheduled_chunk_list/add
#
# Add a scheduled chunk descriptor to the scheduled chunk list
#> Storage
#  @scheduled_chunk_descriptor (in): the schedued chunk descriptor
#> Return void

data modify storage io: list_ref set value "world_handler:volatile chunk_scheduling.scheduled_chunk_list"
data modify storage io: element_ref set value "io: scheduled_chunk_descriptor"
function collections:referenced_list/add_last
