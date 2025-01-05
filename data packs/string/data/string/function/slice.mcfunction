#
# string:slice
#
# Extract a substring from a string an overwrite it
#> Scores
#  @index_start (in): the start index
#  @index_end (in): the end index
#> Storage
#  @string (inout): the string
#> Return void

# Get string length
execute store result score ::string string_size run function string:get_length

# Check for index
scoreboard players operation ::in index_start %= ::string string_size
execute if score ::in index_end > ::string string_size run scoreboard players operation ::in index_end = ::string string_size
scoreboard players operation ::in index_end %= ::string string_size
execute if score ::in index_start >= ::in index_end run data modify storage io: string set value ""
execute if score ::in index_start < ::in index_end run function string:slice/loop_init
