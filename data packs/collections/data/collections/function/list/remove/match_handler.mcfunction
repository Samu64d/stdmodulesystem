#
# collections:list/remove/match_handler
#

# Check for equal elements
execute store success score ::inout match_success run data modify storage io: element set from storage collections:volatile list.temp_element
execute store result score ::inout match_success if score ::inout match_success = ::const FALSE
