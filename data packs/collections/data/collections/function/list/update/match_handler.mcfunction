#
# collections:list/update/match_handler
#

# Check for equal elements
execute store success score ::inout match_success run data modify storage io: element set from storage io: element0
execute store result score ::inout match_success if score ::inout match_success = ::const FALSE
