#
# minecraft_world_api:layout/api/calc_snow_depth/calc_layer_depth
#

data modify storage io: property set value "layers"
function minecraft_world_api:block/blockstates/get_blockstate_property_at_pos
data modify storage io: string set from storage io: property_value
function number:parse_int
