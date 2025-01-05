#
# world_debug:chunk_manager/load
#

# Get chunk descriptor
data modify storage io: chunk_descriptor set from storage io: data.chunk

# Get chunk dimension
function world_handler:chunk_descriptor/get_dimension

# Get chunk pos
function world_handler:chunk_descriptor/get_chunk_pos

# Get chunk center block position
function minecraft_world_api:chunk/pos/get_center_block_pos_from_chunk_pos

# Set at world surface
execute store result score ::in y run function minecraft_world_api:layout/heightmap/get_world_surface_level
function minecraft_world_api:block_pos/set_y

# Show visuals

# Block
data modify storage io: name set value "minecraft:stone"
function world_debug:chunk_manager/load/place_block

# Particles
function minecraft_world_api:block_pos/up
execute store result storage io: x int 1.0 run data get storage io: block_pos.x 1.0
execute store result storage io: y int 1.0 run data get storage io: block_pos.y 1.0
execute store result storage io: z int 1.0 run data get storage io: block_pos.z 1.0
function world_debug:chunk_manager/load/show_particles with storage io:
