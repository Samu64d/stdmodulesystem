#
# world_loader:players_manager/common/calc_player_ticking_area_props
#

data modify storage io: callback set value "world_loader:players_manager/common/calc_player_ticking_area_props/on_executor"
function server:player_entity/select_by_array_uuid
