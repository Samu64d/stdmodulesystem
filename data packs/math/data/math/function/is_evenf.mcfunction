#
# math:is_evenf
#
# Check if a number is even with arbitrary fixed point precision
#> Scores
#  @value (in): the number value
#  @p (in): the fixed point digits
#> Return value
#  boolean flag

scoreboard players operation ::in pow = ::in p
execute store result score ::math mag_value run function math:utils/get_power_of_ten
scoreboard players set ::math temp0 2
scoreboard players operation ::math temp0 *= ::math mag_value
scoreboard players operation ::in value %= ::math temp0

# Return data
return run execute if score ::in value matches 0
