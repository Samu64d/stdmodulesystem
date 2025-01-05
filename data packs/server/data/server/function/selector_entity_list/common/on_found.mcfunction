#
# server:selector_entity_list/common/on_found
#

# Clear callback results
scoreboard players reset ::out callback_results

# Run callback
$execute store result score ::out callback_results run function $(callback)

# Set flag value
scoreboard players operation ::server success = ::const TRUE
