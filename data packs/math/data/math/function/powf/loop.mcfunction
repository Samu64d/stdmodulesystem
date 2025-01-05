#
# math:powf/loop
#

# Check if n is odd
scoreboard players operation ::math temp0 = ::math n
scoreboard players operation ::math temp0 %= ::int 2
execute if score ::math temp0 matches 1 run function math:powf/n_odd

# Update x
scoreboard players operation ::in value0 = ::math x
scoreboard players operation ::in value1 = ::math x
execute store result score ::math x run function math:mulf

# Update n
scoreboard players operation ::math n /= ::int 2

execute if score ::math n matches 2.. run function math:powf/loop

# Loop
