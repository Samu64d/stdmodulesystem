#
# event_system:events_manager/consume_all/next
#

# Get the first list element
function event_system:event_list/next

# Fire event
function event_system:event_descriptor/fire

# Update count
scoreboard players add ::event_system fired_event_count 1

execute if score ::event_system fired_event_count < ::event_system event_list_length run function event_system:events_manager/consume_all/next

# Loop
