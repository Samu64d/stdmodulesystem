#
# string:contains
#
# Check if a string contains a substring
#> Storage
#  @string (in): the string
#  @search (in): the substring to search
#> Return data
#  boolean flag

scoreboard players operation ::in search_only_one = ::const TRUE
scoreboard players operation ::in reverse_search = ::const FALSE
execute store result score ::string found run function string:internal/find

# Return data
return run scoreboard players get ::string found
