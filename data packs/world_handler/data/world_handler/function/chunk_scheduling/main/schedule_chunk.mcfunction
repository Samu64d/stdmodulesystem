#
# world_handler:chunk_scheduling/main/schedule_chunk
#

# Create a new scheduled chunk descriptor
function world_handler:chunk_scheduling/scheduled_chunk_descriptor/new

# Add the scheduled chunk descriptor to the scheduled chunk list
function world_handler:chunk_scheduling/scheduled_chunk_list/add

# Update counter
scoreboard players add ::world_handler::chunk_scheduling last_scheduled_chunk_count 1
