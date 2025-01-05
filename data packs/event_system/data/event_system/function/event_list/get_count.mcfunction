#
# event_system:event_list/get_count
#
# Get the count of event descriptor inside the event list
#> Return data
#  event descriptor count

data modify storage io: list_ref set value "storage event_system:volatile event_list"
return run function collections:referenced_list/get_length
