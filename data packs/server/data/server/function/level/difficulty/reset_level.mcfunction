#
# server:level/difficulty/reset_level
#
# Reset the difficulty level
#> Return void

scoreboard players operation ::in level = ::server::level::const DEFAULT_DIFFICULTY
function server:level/difficulty/set_level
