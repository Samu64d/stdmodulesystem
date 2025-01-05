#
# event_system:event_subscription_map/remove_all_subscriptions
#
# Remove all subscriptions from an event
#> Storage
#  @name (in): the event name
#> Return void

data modify storage io: map_ref set value "storage event_system:volatile event_subscription_map"
data modify storage io: key set from storage io: name
function collections:referenced_set_multimap/remove_all_from_key
