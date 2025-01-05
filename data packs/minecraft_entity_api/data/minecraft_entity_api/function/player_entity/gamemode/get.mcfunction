#
# minecraft_entity_api:player_entity/gamemode/get
#
# Get the gamemode of a player entity
#> Storage
#  @gamemode (out): the gamemode
#> Context
#  @executor (in): the player entity
#> Return void

# Get gamemode code
execute store result score ::minecraft_entity_api::player_entity gamemode run data get entity @s playerGameType 1.0

# Check for values
execute if score ::s gamemode matches 0 run data modify storage io: gamemode set value "survival"
execute if score ::s gamemode matches 1 run data modify storage io: gamemode set value "creative"
execute if score ::s gamemode matches 2 run data modify storage io: gamemode set value "adventure"
execute if score ::s gamemode matches 3 run data modify storage io: gamemode set value "spectator"
