#
# io:print/builder/build
#
# Build a JSON text component string from a message list
#> Storage
#  @messages (in): the list of text message
#  @json_components (out): the JSON text component string
#> Return void

# Open bracket
data modify storage io: json_components set value "["

scoreboard players operation ::io_::print is_first = ::const TRUE
data modify storage io: list set from storage io: messages
data modify storage io: callback set value "io:print/builder/build/callback"
function collections:list/for_each

# Close bracket
data modify storage io: string0 set from storage io: json_components
data modify storage io: string1 set value "]"
function string:concat
data modify storage io: json_components set from storage io: string
