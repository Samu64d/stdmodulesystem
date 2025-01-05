#
# camera:objs/obj.camera/spectate_for_player
#
# Spectate a camera for a player. The player gamemode with be changed to "spectator"
#> Storage
#  @player_uuid (in): the player uuid
#> Context
#  @executor (in): the camera
#> Return void

data modify storage io: uuid set from storage io: player_uuid
data modify storage io: callback set value "camera:objs/obj.camera/spectate_for_player/on_player"
data modify storage io: entity_uuid set from entity @s data.controlled_entity
function server:selector_entity_list/select_by_string_uuid
