#
# event_system:event_subscription_map/call_subscriptions
#
# Call all subscriptions to an event
#> Storage
#  @name (in): the event name
#  @data (in): the event data
#> Return void

data modify storage io: map_ref set value "storage event_system:volatile event_subscription_map"
data modify storage io: key set from storage io: name
data modify storage io: callback set value "event_system:event_subscription_map/call_subscriptions/callback"
function collections:referenced_set_multimap/for_each_key_value_element
