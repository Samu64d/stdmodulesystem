#
# camera:objs/obj.camera/spectate_for_player/on_player
#

# Set gamemode to spectator
data modify storage io: gamemode set value "spectator"
function minecraft_entity_api:player_entity/gamemode/set

# Spectate
function camera:objs/obj.camera/spectate_for_player/spectate with storage io:
