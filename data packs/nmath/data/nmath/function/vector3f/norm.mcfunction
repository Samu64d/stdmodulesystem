#
# nmath:vector3f/norm
#
# Calculate the norm of a float 3d vector
#> Storage
#  @vector (in): the float 3d vector
#  @result (out): the norm value
#> Return void

# Calculate root argument

# X^2
data modify storage io: value set from storage io: vector[0]
function math:floating_point/from_storage
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage io: result
function math:floating_point/mul
data modify storage nmath:volatile vector3f.x2 set from storage io: result

# Y^2
data modify storage io: value set from storage io: vector[1]
function math:floating_point/from_storage
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage io: result
function math:floating_point/mul
data modify storage nmath:volatile vector3f.y2 set from storage io: result

# Z^2
data modify storage io: value set from storage io: vector[2]
function math:floating_point/from_storage
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage io: result
function math:floating_point/mul
data modify storage nmath:volatile vector3f.z2 set from storage io: result

# Sum
data modify storage io: value0 set from storage nmath:volatile vector3f.x2
data modify storage io: value1 set from storage nmath:volatile vector3f.y2
function math:floating_point/add
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage nmath:volatile vector3f.z2
function math:floating_point/add

# Calculate root
data modify storage io: value set from storage io: result
function math:floating_point/sqrt

# Convert
data modify storage io: value set from storage io: result
function math:floating_point/to_storage_float
