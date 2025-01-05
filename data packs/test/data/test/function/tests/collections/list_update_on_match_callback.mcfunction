#
# test:tests/collections/list_update_on_match_callback
#

execute store result score ::test value run data get storage io: element 1.0
scoreboard players operation ::test value %= ::int 2
execute store success score ::inout match_success if score ::test value matches 1
