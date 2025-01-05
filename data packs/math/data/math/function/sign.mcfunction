#
# math:sign
#
# Return a positive or negative one that indicates the sign of the number (-1 = negative number, 1 = positive number)
#> Scores
#  @value (in): the number
#> Return data
#  a signed one with the sign of the number

scoreboard players set ::math sign 1
execute if score ::in value matches ..-1 run scoreboard players set ::math sign -1

# Return value
return run scoreboard players get ::math sign
