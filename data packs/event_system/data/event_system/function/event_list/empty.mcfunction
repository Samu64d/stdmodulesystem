#
# event_system:event_list/empty
#
# Empty the event list
#> Return void

data modify storage io: list_ref set value "storage event_system:volatile event_list"
function collections:referenced_list/empty
