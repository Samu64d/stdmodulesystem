#
# server:level/difficulty/decrement_level
#
# Decrement the difficulty level
#> Return void

# Get level
function server:level/difficulty/get_level

# Decrement value
execute if score ::out level > ::server::level::enum_difficulties PEACEFUL run scoreboard players remove ::out level 1

# Set level
scoreboard players operation ::in level = ::out level
function server:level/difficulty/set_level
