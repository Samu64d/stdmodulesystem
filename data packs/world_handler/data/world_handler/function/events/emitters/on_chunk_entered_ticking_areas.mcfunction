#
# world_handler:events/emitters/on_chunk_entered_ticking_areas
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.chunk set from storage io: chunk_descriptor
execute store result storage io: data.forceloaded int 1.0 run scoreboard players get ::in forceloaded

# Fire
data modify storage io: name set value "world_handler:on_chunk_entered_ticking_areas"
function event_system:api/fire
