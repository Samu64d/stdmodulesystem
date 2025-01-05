#
# server:platform/is_modded
#
# Check if the server is modded
#> Return data
#  boolean flag

scoreboard players operation ::server::platform is_modded = ::const FALSE

# Check the existence of commands

# Forge
data modify storage io: command set value "forge tps"
execute store success score ::server::platform temp0 run function server:platform/common/test_command with storage io:
execute if score ::server::platform temp0 = ::const TRUE run scoreboard players operation ::server::platform is_modded = ::const TRUE

# Bukkit (CraftBukkit, Spigot etc)
data modify storage io: command set value "plugins"
execute store success score ::server::platform temp0 run function server:platform/common/test_command with storage io:
execute if score ::server::platform temp0 = ::const TRUE run scoreboard players operation ::server::platform is_modded = ::const TRUE

# Return data
return run scoreboard players get ::server::platform is_modded
