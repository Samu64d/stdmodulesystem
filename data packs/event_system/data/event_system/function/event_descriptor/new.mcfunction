#
# event_system:event_descriptor/new
#
# Create a new event descriptor
#> Storage
#  @name (in): the event name
#  @data (in): the event data
#  @event_descriptor (out): the event descriptor
#> Return void

# Create object
data modify storage io: event_descriptor set value {name: "null", data: {}}

# Set name
data modify storage io: event_descriptor.name set from storage io: name

# Set data
data modify storage io: event_descriptor.data set from storage io: data
