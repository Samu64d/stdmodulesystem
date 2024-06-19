#
# world_handler:forceloaded_chunks_manager/boot/config
#

scoreboard objectives add CHECK_FORCELOADED_ON_BOOT dummy

scoreboard objectives add CHECK_FORCELOADED_ON_TICK dummy

scoreboard objectives add RESET_FORCELOADED_ON_BOOT dummy

# Check for forceloaded chunks that are unload on boot
scoreboard players operation ::world_handler::forceloaded_chunks_manager::const CHECK_FORCELOADED_ON_BOOT = ::const TRUE

# Check for forceloaded chunks that are unload on tick
scoreboard players operation ::world_handler::forceloaded_chunks_manager::const CHECK_FORCELOADED_ON_TICK = ::const FALSE

# Reset all forceloaded chunks on boot even persistents
scoreboard players operation ::world_handler::forceloaded_chunks_manager::const RESET_FORCELOADED_ON_BOOT = ::const FALSE
