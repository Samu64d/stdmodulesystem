#
# nmath:vector2f/dot
#
# Calculate the dot product of two float 2d vectors
#> Storage
#  @vector0 (in): the first float 2d vector
#  @vector1 (in): the second float 2d vector
#  @result (out): the dot product
#> Return void

# X0 * x1
data modify storage io: value set from storage io: vector0[0]
function math:floating_point/from_storage
data modify storage io: value0 set from storage io: result
data modify storage io: value set from storage io: vector1[0]
function math:floating_point/from_storage
data modify storage io: value1 set from storage io: result
function math:floating_point/mul
data modify storage nmath:volatile vector2f.x0x1 set from storage io: result

# Y0 * y1
data modify storage io: value set from storage io: vector0[1]
function math:floating_point/from_storage
data modify storage io: value0 set from storage io: result
data modify storage io: value set from storage io: vector1[1]
function math:floating_point/from_storage
data modify storage io: value1 set from storage io: result
function math:floating_point/mul
data modify storage nmath:volatile vector2f.y0y1 set from storage io: result

# Sum
data modify storage io: value0 set from storage nmath:volatile vector2f.x0x1
data modify storage io: value1 set from storage nmath:volatile vector2f.y0y1
function math:floating_point/add

# Convert
data modify storage io: value set from storage io: result
function math:floating_point/to_storage_float
