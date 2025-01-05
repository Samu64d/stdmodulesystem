#
# server:selector_player_list/common/on_found
#

# Run callback
$function $(callback)

# Set flag value
scoreboard players operation ::server success = ::const TRUE
