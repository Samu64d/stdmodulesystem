#
# world_handler:ticking_areas_manager/ticking_area_descriptor/copy
#
# Copy the relevant data of the first ticking area descriptor into the second ticking area descriptor
#> Storage
#  @ticking_area_descriptor0 (in): the first ticking area descriptor
#  @ticking_area_descriptor1 (out): the second ticking area descriptor
#> Return void

# Dimension
data modify storage io: ticking_area_descriptor1.dimension set from storage io: ticking_area_descriptor0.dimension

# Center position
data modify storage io: ticking_area_descriptor1.center set from storage io: ticking_area_descriptor0.center

# Size
data modify storage io: ticking_area_descriptor1.size set from storage io: ticking_area_descriptor0.size

# Forceloaded
data modify storage io: ticking_area_descriptor1.forceloaded set from storage io: ticking_area_descriptor0.forceloaded

# Overlapped ticking area list
data modify storage io: ticking_area_descriptor1.overlapped set from storage io: ticking_area_descriptor0.overlapped

# Update internal values
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor1
function world_handler:ticking_areas_manager/ticking_area_descriptor/internal/on_center_or_size_change
data modify storage io: ticking_area_descriptor1 set from storage io: ticking_area_descriptor
