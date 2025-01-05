#
# world_loader:boot/bootmgr
#
# World loader
#  Manage world global features and custom world loading and ticking.
#  The loading runtime analyze when chunks get loaded or unloaded.
#  The ticking runtime is running in search of random chunk to analyze around every handled world area.
#  Chunks are divided into columns (1xworld_heightx1) that are represented by a pair (x, y) of coordinates.

# Load internal configuration
function world_loader:config/ticking_areas

# Players manager
function world_loader:players_manager/boot/bootmgr

# World spawn area manager
function world_loader:world_spawn_area_manager/boot/bootmgr
