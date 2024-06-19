#
# string:replace
#
# Replace all substring occurences inside a string with another substring
#> Storage
#  @string (inout): the string
#  @search (in): the substring to search
#  @replace (in): the substring to replace
#> Return void

# Find indexes
scoreboard players operation ::in search_only_one = ::const FALSE
scoreboard players operation ::in reverse_search = ::const FALSE
function string:internal/find
data modify storage string:volatile found_list set from storage io: found_list

# Check for not empty found list
data modify storage io: array set from storage string:volatile found_list
execute store result score ::string temp0 run function collections:array/get_size
execute if score ::string temp0 matches 1.. run function string:replace/on_found
