#
# math:powf/n_odd
#

# Update y
scoreboard players operation ::in value0 = ::math x
scoreboard players operation ::in value1 = ::math y
execute store result score ::math y run function math:mulf

# Update n
scoreboard players remove ::math n 1
