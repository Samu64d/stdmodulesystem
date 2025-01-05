#
# event_system:event_list/next
#
# Get and remove the first event descriptor from the event list
#> Storage
#  @event_descriptor (out): the event descriptor
#> Return void

# Get the first element of the event list
data modify storage io: list_ref set value "storage event_system:volatile event_list"
function collections:referenced_list/remove_first
data modify storage io: event_descriptor set from storage io: element
