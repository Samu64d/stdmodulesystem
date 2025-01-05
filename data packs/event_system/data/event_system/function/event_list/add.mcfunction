#
# event_system:event_list/add
#
# Add an event descriptor to the event list
#> Storage
#  @event_descriptor (in): the event descriptor
#> Return void

# Add the element to the event list
data modify storage io: list_ref set value "storage event_system:volatile event_list"
data modify storage io: element_ref set value "storage io: event_descriptor"
function collections:referenced_list/add_last
