#
# world_handler:ticking_areas_manager/ticking_area_descriptor/internal/on_center_or_size_change
#

# Calculate new bounds
function world_handler:ticking_areas_manager/ticking_area_descriptor/internal/calc_bounds

# Create a new bounding box
scoreboard players operation ::in x0 = ::out x0
scoreboard players operation ::in z0 = ::out z0
scoreboard players operation ::in x1 = ::out x1
scoreboard players operation ::in z1 = ::out z1
function utils:bounding_box2di/new

# Set bounding box
function world_handler:ticking_areas_manager/ticking_area_descriptor/internal/set_bounding_box
