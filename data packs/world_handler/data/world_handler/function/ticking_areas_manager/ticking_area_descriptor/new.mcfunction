#
# world_handler:ticking_areas_manager/ticking_area_descriptor/new
#
# Create a new ticking area descriptor
#> Scores
#  @center_x (in): the x center position
#  @center_y (in): the z center position
#  @size (in): the size
#  @forceloaded (in): boolean flag
#> Storage
#  @dimension (in): the dimension
#  @ticking_area_descriptor (out): the ticking area descriptor
#> Return void

# Create object
data modify storage io: ticking_area_descriptor set value {dimension: "null", center: [I; 0, 0], size: 0, uuid: [I; 0, 0, 0, 0], from_previous_session: false, cache: {}}

# Set dimension
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_dimension

# Set center
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_center

# Set size
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_size

# Set forceloaded
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_forceloaded

# Set uuid
function uuid:generate_array_unsafe
data modify storage io: ticking_area_descriptor.uuid set from storage io: uuid
