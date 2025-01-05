#
# world_handler:random_tick_speed/main
#

# Native random tick speed
execute if score ::world_handler::const DISABLE_NATIVE_TICKING = ::const FALSE run function world_handler:random_tick_speed/controllers/native

# Disabled random tick speed
execute if score ::world_handler::const DISABLE_NATIVE_TICKING = ::const TRUE run function world_handler:random_tick_speed/controllers/disabled
