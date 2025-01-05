#
# event_system:events_manager/consume_all
#

# Get the number of events
execute store result score ::event_system event_list_length run function event_system:event_list/get_count

# Start loop
scoreboard players set ::event_system fired_event_count 0
execute if score ::event_system event_list_length matches 1.. run function event_system:events_manager/consume_all/next
