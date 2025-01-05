#
# event_system:event_subscription_map/add_subscription
#
# Add a subscription to an event
#> Storage
#  @name (in): the event name
#  @callback (in): the event callback
#> Return data
#  boolean flag

data modify storage io: map_ref set value "storage event_system:volatile event_subscription_map"
data modify storage io: key set from storage io: name
data modify storage io: value_ref set value "storage io: callback"
return run function collections:referenced_set_multimap/put_in_key
