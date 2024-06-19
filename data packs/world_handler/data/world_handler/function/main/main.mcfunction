#
# world_handler:main/main
#

# Load internal configuration
function world_handler:config/native_ticking
function world_handler:config/ticking_areas
function world_handler:config/ticking

# Process local world features

# Chunk forceloading
function world_handler:forceloaded_chunks_manager/main/main

# Ticking area chunks
function world_handler:ticking_area_chunks_manager/main/main

# Ticking areas
function world_handler:ticking_areas_manager/main/main

# Chunk manager
function world_handler:chunk_manager/main/main

# Chunk scheduling
function world_handler:chunk_scheduling/main/main

# Process global world features

# Random tick speed
function world_handler:random_tick_speed/main

# World spawn manager
function world_handler:world_spawn_manager/main/main
