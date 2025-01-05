#
# event_system:event_subscription_map/call_subscriptions/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/push

$function $(element)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/pop
