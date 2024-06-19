#
# event_system:event_descriptor/get_event_data
#
# Get the event data of a event descriptor
#> Storage
#  @event_descriptor (in): the event descriptor
#  @data (out): the event data
#> Return void

data modify storage io: data set from storage io: event_descriptor.data
