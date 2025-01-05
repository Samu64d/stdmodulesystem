#
# test:tests/collections/list_for_each_update_callback
#

execute store result score ::test value run data get storage io: element 1.0
scoreboard players add ::test value 1
execute store result storage io: element int 1.0 run scoreboard players get ::test value
