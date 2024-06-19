#
# string:trunc
#
# Truncate a string until the string reaches the given length
#> Scores
#  @length (in): the length of the string
#> Storage
#  @string (inout): the string
#> Return void

# Get string length
execute store result score ::string length run function string:get_length

scoreboard players set ::in index_start 0
scoreboard players operation ::in index_end = ::in length
execute if score ::string length > ::in length run function string:slice
