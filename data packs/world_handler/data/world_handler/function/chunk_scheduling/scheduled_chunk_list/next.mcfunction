#
# world_handler:chunk_scheduling/scheduled_chunk_list/next
#
# Get and remove the first scheduled chunk descriptor from the scheduled chunk list
#> Storage
#  @scheduled_chunk_descriptor (out): the schedued chunk descriptor
#> Return void

data modify storage io: list_ref set value "world_handler:volatile chunk_scheduling.scheduled_chunk_list"
function collections:referenced_list/remove_first
data modify storage io: scheduled_chunk_descriptor set from storage io: element
