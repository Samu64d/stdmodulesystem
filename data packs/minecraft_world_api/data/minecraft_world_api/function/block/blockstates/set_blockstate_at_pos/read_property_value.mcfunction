#
# minecraft_world_api:block/blockstates/set_blockstate_at_pos/read_property_value
#

data modify storage io: property set from storage io: element

# Read blockstate property value
function minecraft_world_api:block/blockstates/set_blockstate_at_pos/read_property_value/read with storage io:

# Append data
data modify storage io: string0 set from storage io: blockstate_string
data modify storage io: string1 set from storage io: property
function string:concat
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set value "="
function string:concat
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set from storage io: property_value
function string:concat
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set value ","
function string:concat
data modify storage io: blockstate_string set from storage io: string
