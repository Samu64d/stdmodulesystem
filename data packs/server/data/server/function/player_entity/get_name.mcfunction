#
# server:player_entity/get_name
#
# Get the name of a player entity
#> Storage
#  @name (out): the name of the player entity
#> Context
#  @executor (in): the player entity
#> Return void

# Default to unknow
data modify storage io: name set value "unknow"

# Get value from loot tables
loot spawn ~ -100 ~ loot server:head/get
execute positioned ~ -100 ~ run data modify storage io: name set from entity @e[type=minecraft:item, distance=..1, limit=1] Item.components."minecraft:profile".name
execute positioned ~ -100 ~ run kill @e[type=minecraft:item, distance=..1, limit=1]
