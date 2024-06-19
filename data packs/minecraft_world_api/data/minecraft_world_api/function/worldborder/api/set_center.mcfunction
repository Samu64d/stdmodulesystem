#
# minecraft_world_api:worldborder/api/set_center
#
# Set the center position of the world border
#> Storage
#  @center_x (in): the center x position
#  @center_z (in): the center z position
#> Return void

# Check for leading and trailing zero

# Center x
data modify storage io: number set from storage io: center_x
function number:to_fractional
data modify storage io: center_x set from storage io: string

# Center z
data modify storage io: number set from storage io: center_z
function number:to_fractional
data modify storage io: center_z set from storage io: string

# Set
function minecraft_world_api:worldborder/api/set_center/set with storage io:
