#
# nmath:sph2cart
#
# Convert spherical coordinate values to cartesian coordinate values with fixed point precision
#> Scores
#  @r (in): the vector magnitude
#  @r_x (in): the θ polar angle measure expressed in degrees
#  @r_z (in): the φ azimuthal angle measure expressed in degrees
#  @x (out): the x cartesian value
#  @y (out): the y cartesian value
#  @z (out): the z cartesian value
#> Return void

# X = r * sin(θ) * cos(φ)
# Y = r * sin(θ) * sin(φ)
# Z = r * cos(θ)

# Calculate r * sin(θ)
scoreboard players operation ::in angle = ::in r_x
execute store result score ::in value0 run function math:sindeg
scoreboard players operation ::in value1 = ::in r
execute store result score ::nmath rsinrx run function math:mul

# X
scoreboard players operation ::in angle = ::in r_z
execute store result score ::in value0 run function math:cosdeg
scoreboard players operation ::in value1 = ::nmath rsinrx
execute store result score ::out x run function math:mul

# Y
scoreboard players operation ::in angle = ::in r_z
execute store result score ::in value0 run function math:sindeg
scoreboard players operation ::in value1 = ::nmath rsinrx
execute store result score ::out y run function math:mul

# Z
scoreboard players operation ::in angle = ::in r_x
execute store result score ::in value0 run function math:cosdeg
scoreboard players operation ::in value1 = ::in r
execute store result score ::out z run function math:mul