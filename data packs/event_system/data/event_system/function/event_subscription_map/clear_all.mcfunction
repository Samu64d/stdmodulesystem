#
# event_system:event_subscription_map/clear_all
#
# Clear all subscriptions of all events
#> Return void

data modify storage io: map_ref set value "storage event_system:volatile event_subscription_map"
function collections:referenced_set_multimap/clear
