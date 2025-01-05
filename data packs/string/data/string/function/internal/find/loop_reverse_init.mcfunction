#
# string:internal/find/loop_reverse_init
#

scoreboard players operation ::string string_index = ::string string_size
scoreboard players remove ::string string_index 1
scoreboard players operation ::string search_string_index = ::string search_string_size
scoreboard players remove ::string search_string_index 1
function string:internal/find/loop_reverse
