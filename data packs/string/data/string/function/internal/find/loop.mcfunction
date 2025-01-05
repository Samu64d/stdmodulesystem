#
# string:internal/find/loop
#

# Check for empty search string
execute if score ::string search_string_size matches 0 run scoreboard players operation ::string success = ::const TRUE
execute if score ::string search_string_size matches 1.. run function string:internal/find/check_for_equal

# Characters are equal
execute if score ::string success = ::const TRUE run scoreboard players add ::string search_string_index 1

# Characters aren't equal
execute if score ::string success = ::const FALSE run scoreboard players set ::string search_string_index 0

# Substring found
execute if score ::string search_string_index >= ::string search_string_size run function string:internal/find/on_found

scoreboard players add ::string string_index 1
execute if score ::string string_index < ::string string_size run function string:internal/find/loop

# Loop
