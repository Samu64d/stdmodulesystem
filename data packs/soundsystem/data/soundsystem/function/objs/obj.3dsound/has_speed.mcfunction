#
# soundsystem:objs/obj.3dsound/has_speed
#
# Check if a 3d sound has speed
#> Context
#  @executor (in): the 3d sound
#> Return data
#  boolean flag

# Get speed
data modify storage io: method set value "get_speed"
function obj:invoke
data modify storage io: value set from storage io: speed
function math:floating_point/from_storage

# Compare with zero
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage math:static floating_point.ZERO
execute store result score ::soundsystem::objs::obj.3dsound has_speed run function math:floating_point/compare/equal

# Return data
return run execute if score ::soundsystem::objs::obj.3dsound has_speed = ::const FALSE
