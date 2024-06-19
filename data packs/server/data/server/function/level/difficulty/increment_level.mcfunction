#
# server:level/difficulty/increment_level
#
# Increment the difficulty level
#> Return void

# Get level
execute store result score ::server::level level run function server:level/difficulty/get_level

# Increment value
execute if score ::server::level level < ::server::level::enum_difficulties HARD run scoreboard players add ::server::level level 1

# Set level
scoreboard players operation ::in level = ::server::level level
function server:level/difficulty/set_level
