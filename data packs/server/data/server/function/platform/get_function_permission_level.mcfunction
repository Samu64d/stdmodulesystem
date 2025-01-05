#
# server:platform/get_function_permission_level
#
# Get the function permission level
#> Return data
#  function permission level

# Default to 0
scoreboard players set ::server::platform permission_level 0

# Check for level 2
data modify storage io: command set value "forceload query 0 0"
execute store success score ::server::platform success run function server:platform/common/test_command with storage io:
execute if score ::server::platform success = ::const TRUE run scoreboard players set ::server::platform permission_level 2

# Check for level 3
data modify storage io: command set value "banlist list"
execute store success score ::server::platform success run function server:platform/common/test_command with storage io:
execute if score ::server::platform success = ::const TRUE run scoreboard players set ::server::platform permission_level 3

# Check for level 4
data modify storage io: command set value "save-on"
data modify storage io: command_backup set value "save-off"
execute store success score ::server::platform success run function server:platform/common/test_command_backup with storage io:
execute if score ::server::platform success = ::const TRUE run scoreboard players set ::server::platform permission_level 4

# Return data
return run scoreboard players get ::server::platform permission_level
