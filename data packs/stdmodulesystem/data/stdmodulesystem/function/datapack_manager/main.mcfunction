#
# stdmodulesystem:datapack_manager/main
#

# Call dependency resolver
execute if score ::stdmodulesystem first_tick = ::const TRUE run function stdmodulesystem:datapack_manager/dependency_resolver/main

# Check for first tick flag
execute if score ::stdmodulesystem need_reload = ::const TRUE run return 0

# Datapack loader
execute if score ::stdmodulesystem first_tick = ::const TRUE run function stdmodulesystem:datapack_manager/loader

# Datapack ticker
function stdmodulesystem:datapack_manager/ticker
