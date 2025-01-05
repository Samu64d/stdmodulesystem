#
# nmath:vector2f/sub
#
# Substract the second float 2d vector from the first float 2d vector
#> Storage
#  @vector0 (inout): the first float 2d vector
#  @vector1 (in): the second float 2d vector
#> Return void

# X

# X0
data modify storage io: value set from storage io: vector0[0]
function math:floating_point/from_storage
data modify storage io: value0 set from storage io: result

# X1
data modify storage io: value set from storage io: vector1[0]
function math:floating_point/from_storage
data modify storage io: value1 set from storage io: result

# Substract
function math:floating_point/sub

# Set new X0
data modify storage io: value set from storage io: result
function math:floating_point/to_storage_float
data modify storage io: vector0[0] set from storage io: result

# Y

# Y0
data modify storage io: value set from storage io: vector0[1]
function math:floating_point/from_storage
data modify storage io: value0 set from storage io: result

# Y1
data modify storage io: value set from storage io: vector1[1]
function math:floating_point/from_storage
data modify storage io: value1 set from storage io: result

# Substract
function math:floating_point/sub

# Set new Y0
data modify storage io: value set from storage io: result
function math:floating_point/to_storage_float
data modify storage io: vector0[1] set from storage io: result
