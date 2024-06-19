#
# world_handler:chunk_scheduling/consuming/consume_all/next
#

# Get the first scheduled chunk list element
function world_handler:chunk_scheduling/scheduled_chunk_list/next

# Tick chunk
function world_handler:chunk_scheduling/scheduled_chunk_descriptor/tick

scoreboard players add ::world_handler::chunk_scheduling last_ticked_chunk_count 1
execute if score ::world_handler::chunk_scheduling last_ticked_chunk_count < ::world_handler::chunk_scheduling scheduled_chunk_list_length run function world_handler:chunk_scheduling/consuming/consume_all/next

# Loop
