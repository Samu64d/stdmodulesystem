#
# string:split
#
# Split a string into substrings by a delimiter and return an array containing these substrings
#> Storage
#  @string (in): the string
#  @delimiter (in): the delimiter
#  @array (out): the array
#> Return void

# Create result array reference
function collections:array/new
data modify storage string:volatile substring_list set from storage io: array

# Find indexes
scoreboard players operation ::in search_only_one = ::const FALSE
scoreboard players operation ::in reverse_search = ::const FALSE
data modify storage io: search set from storage io: delimiter
function string:internal/find
data modify storage string:volatile found_list set from storage io: found_list

# Check for not empty found list
data modify storage io: array set from storage string:volatile found_list
execute store result score ::string temp0 run function collections:array/get_size
execute if score ::string temp0 matches 0 run function string:split/on_not_found
execute if score ::string temp0 matches 1.. run function string:split/on_found

data modify storage io: array set from storage string:volatile substring_list
