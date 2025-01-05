#
# minecraft_world_api:chunk/api/get_chunk_distance_from_entity
#
# Get the chunk distance between a chunk and an entity
#> Scores
#  @x (out): the x distance value
#  @z (out): the z distance value
#> Storage
#  @dimension (in): the dimension
#  @chunk_pos (in): the chunk position
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Check for entity dimension
execute unless function minecraft_entity_api:entity/is_in_dimension run return run scoreboard players get ::const FALSE

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: chunk_pos"
function stdmodulesystem:stack/push

# Get entity chunk position values
function minecraft_entity_api:entity/get_chunk_pos
execute store result score ::minecraft_world_api::chunk x0 run function minecraft_world_api:chunk_pos/get_x
execute store result score ::minecraft_world_api::chunk z0 run function minecraft_world_api:chunk_pos/get_z

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: chunk_pos"
function stdmodulesystem:stack/pop

# Get chunk position values
execute store result score ::out x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::out z run function minecraft_world_api:chunk_pos/get_z

# Calculate distance
scoreboard players operation ::out x -= ::minecraft_world_api::chunk x0
scoreboard players operation ::out z -= ::minecraft_world_api::chunk z0

# Return data
return run scoreboard players get ::const TRUE
