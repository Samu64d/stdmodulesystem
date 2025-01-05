#
# event_system:event_descriptor/get_event_name
#
# Get the event name of a event descriptor
#> Storage
#  @event_descriptor (in): the event descriptor
#  @name (out): the event name
#> Return void

data modify storage io: name set from storage io: event_descriptor.name
