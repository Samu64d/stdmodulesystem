#
# test:tests/collections/list_get_first_on_match_callback
#

execute store result score ::test value run data get storage io: element 1.0
execute store success score ::inout match_success if score ::test value matches 2..
