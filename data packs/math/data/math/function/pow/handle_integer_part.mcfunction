#
# math:pow/handle_integer_part
#

# Calculate n
scoreboard players operation ::math n = ::math n_int
scoreboard players operation ::math n /= ::math::const FXP_DEF_MAG

# Case n = 1
execute if score ::math n matches 1 run scoreboard players operation ::math pow_int = ::math value
execute if score ::math n matches 1 run return 0

# Start loop
scoreboard players operation ::math x = ::math value
scoreboard players operation ::math y = ::math::const FXP_DEF_MAG
function math:pow/loop

# Multiply values
scoreboard players operation ::in value0 = ::math y
scoreboard players operation ::in value1 = ::math x
execute store result score ::math pow_int run function math:mul
