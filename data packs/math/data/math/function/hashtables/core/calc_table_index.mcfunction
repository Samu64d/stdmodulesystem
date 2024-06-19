#
# math:hashtables/core/calc_table_index
#

scoreboard players operation ::in p = ::math::hashtables::const HASHTABLES_FXP_SIZE

# Interpolate value
scoreboard players operation ::in value0 = ::math::hashtables value
scoreboard players operation ::in value1 = ::math::hashtables max_value
execute store result score ::math::hashtables index run function math:divf

# Convert to int
scoreboard players operation ::math::hashtables index /= ::int 1000
scoreboard players operation ::math::hashtables index *= ::math::hashtables table_size
scoreboard players operation ::math::hashtables index /= ::int 100000
