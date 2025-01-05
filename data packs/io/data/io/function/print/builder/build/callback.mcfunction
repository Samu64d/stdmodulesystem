#
# io:print/builder/build/callback
#

# Create json component

# Open bracket
execute if score ::io_::print is_first = ::const TRUE run data modify storage io_:static print.json_component set value "{'text':'"
execute if score ::io_::print is_first = ::const FALSE run data modify storage io_:static print.json_component set value ",{'text':'"

# Message
data modify storage io: string0 set from storage io_:static print.json_component
data modify storage io: string1 set from storage io: element
function string:concat
data modify storage io_:static print.json_component set from storage io: string

# Close bracket
data modify storage io: string0 set from storage io_:static print.json_component
data modify storage io: string1 set value "'}"
function string:concat
data modify storage io_:static print.json_component set from storage io: string

# Concat strings
data modify storage io: string0 set from storage io: json_components
data modify storage io: string1 set from storage io_:static print.json_component
function string:concat
data modify storage io: json_components set from storage io: string

# Update flag
scoreboard players operation ::io_::print is_first = ::const FALSE
