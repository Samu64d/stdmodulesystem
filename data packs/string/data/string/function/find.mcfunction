#
# string:find
#
# Return the index and of the first occurence of a substring inside a string
#> Storage
#  @string (in): the string
#  @search (in): the substring to search
#> Return data
#  founded index

scoreboard players operation ::in search_only_one = ::const TRUE
scoreboard players operation ::in reverse_search = ::const FALSE
execute store result score ::string found run function string:internal/find

# Check for found
scoreboard players set ::string index -1
execute if score ::string found = ::const TRUE run function string:find/on_found

# Return data
return run scoreboard players get ::string index
