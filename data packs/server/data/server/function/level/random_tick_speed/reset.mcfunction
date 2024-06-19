#
# server:level/random_tick_speed/reset
#
# Reset the random tick speed
#> Return void

scoreboard players operation ::in value = ::server::level::const DEFAULT_RANDOM_TICK_SPEED
function server:level/random_tick_speed/set
