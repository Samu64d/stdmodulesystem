#
# string:count
#
# Count a substring occurence inside a string
#> Storage
#  @string (in): the string
#  @search (in): the substring to search
#> Return data
#  number of occurences

scoreboard players operation ::in search_only_one = ::const FALSE
scoreboard players operation ::in reverse_search = ::const FALSE
function string:internal/find

# Get found list size
data modify storage io: array set from storage io: found_list
return run function collections:array/get_size
