#
# nmath:sph2cartf
#
# Convert spherical coordinate values to cartesian coordinate values with arbitrary fixed point precision
#> Scores
#  @r (in): the vector magnitude
#  @r_x (in): the θ polar angle measure expressed in degrees
#  @r_z (in): the φ azimuthal angle measure expressed in degrees
#  @p (in): the fixed point digits
#  @x (out): the x cartesian value
#  @y (out): the y cartesian value
#  @z (out): the z cartesian value
#> Return void

# X = r * sin(θ) * cos(φ)
# Y = r * sin(θ) * sin(φ)
# Z = r * cos(θ)

# Calculate r * sin(θ)
scoreboard players operation ::in angle = ::in r_x
execute store result score ::in value0 run function math:sindegf
scoreboard players operation ::in value1 = ::in r
execute store result score ::nmath rsinrx run function math:mulf

# X
scoreboard players operation ::in angle = ::in r_z
execute store result score ::in value0 run function math:cosdegf
scoreboard players operation ::in value1 = ::nmath rsinrx
execute store result score ::out x run function math:mulf

# Y
scoreboard players operation ::in angle = ::in r_z
execute store result score ::in value0 run function math:sindegf
scoreboard players operation ::in value1 = ::nmath rsinrx
execute store result score ::out y run function math:mulf

# Z
scoreboard players operation ::in angle = ::in r_x
execute store result score ::in value0 run function math:cosdegf
scoreboard players operation ::in value1 = ::in r
execute store result score ::out z run function math:mulf
