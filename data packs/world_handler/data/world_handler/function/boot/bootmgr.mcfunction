#
# world_handler:boot/bootmgr
#

# Load internal configuration
function world_handler:config/native_ticking
function world_handler:config/ticking

# Registry constants
function world_handler:define/const_register

# Cache manager
function world_handler:cache_manager/boot/bootmgr

# Chunk manager
function world_handler:chunk_manager/boot/bootmgr

# Chunk scheduling
function world_handler:chunk_scheduling/boot/bootmgr

# Foreceloaded chunks manager
function world_handler:forceloaded_chunks_manager/boot/bootmgr

# Ticking area chunks
function world_handler:ticking_area_chunks_manager/boot/bootmgr

# Ticking areas manager
function world_handler:ticking_areas_manager/boot/bootmgr

# World spawn manager
function world_handler:world_spawn_manager/boot/bootmgr
