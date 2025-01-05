#
# server:platform/is_server
#
# Check if the system is running on a server
#> Return data
#  boolean flag

# Check the existence of the banlist command
data modify storage io: command set value "banlist list"
execute store success score ::server::platform is_server run function server:platform/common/test_command with storage io:

# Return data
return run scoreboard players get ::server::platform is_server
