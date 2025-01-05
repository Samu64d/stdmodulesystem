#
# math:hashtables/functions/sin
#
# Calculate the sine value with fixed point precision using hashtables
#  Supported domain: [0; 6.28]
#> Scores
#  @angle (in): the angle measure expressed in radians
#  @sine (out): the sine value
#> Return void

# Calculate table index
scoreboard players operation ::math::hashtables value = ::in angle
scoreboard players operation ::math::hashtables max_value = ::math::hashtables::const HASHTABLES_SIN_MAX_VALUE
scoreboard players operation ::math::hashtables table_size = ::math::hashtables::const HASHTABLES_SIN_SIZE
function math:hashtables/core/calc_table_index

# Get table index
execute store result storage io: index int 1.0 run scoreboard players get ::math::hashtables index
function math:hashtables/functions/sin/get_table_index with storage io:

scoreboard players operation ::out sin = ::math::hashtables value
