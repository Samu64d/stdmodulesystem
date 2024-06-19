#
# stdmodulesystem:main/main
#

# Set default flag value
scoreboard players operation ::stdmodulesystem need_reload = ::const FALSE

# Datapack manager
function stdmodulesystem:datapack_manager/main

# Check for first tick flag
execute if score ::stdmodulesystem need_reload = ::const TRUE run return 0

# Object runtime
function stdmodulesystem:obj/obj_runtime/main

# Reset first tick tag
scoreboard players operation ::stdmodulesystem first_tick = ::const FALSE
