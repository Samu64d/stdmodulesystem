#
# world_handler:chunk_scheduling/main/main
#

scoreboard players set ::world_handler::chunk_scheduling last_scheduled_chunk_count 0

# Process ticking areas
execute if score ::world_handler::const DISABLE_TICKING = ::const FALSE run function world_handler:chunk_scheduling/main/process_chunks
