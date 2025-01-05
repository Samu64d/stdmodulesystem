#
# world_handler:config/native_ticking
#

scoreboard objectives add DISABLE_NATIVE_TICKING dummy

scoreboard objectives add DEFAULT_NATIVE_TICKING_SPEED dummy

# Native Minecraft ticking disable flag
scoreboard players operation ::world_handler::const DISABLE_NATIVE_TICKING = ::const FALSE

# Native Minecraft ticking speed
scoreboard players set ::world_handler::const DEFAULT_NATIVE_TICKING_SPEED 0
