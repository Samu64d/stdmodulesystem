#
# string:get_char
#
# Get the n character inside a string
#> Scores
#  @index (in): index to return
#> Storage
#  @string (in): the string
#  @char (out): the n character value
#> Return void

# Get string length
execute store result score ::string length run function string:get_length

# Handle negative index
scoreboard players operation ::in index %= ::string length

execute store result storage io: index int 1.0 run scoreboard players get ::in index
scoreboard players add ::in index 1
execute store result storage io: index_plus_one int 1.0 run scoreboard players get ::in index
function string:get_char/get_char with storage io:
