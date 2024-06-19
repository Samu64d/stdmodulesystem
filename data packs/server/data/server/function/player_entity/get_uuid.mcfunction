#
# server:player_entity/get_uuid
#
# Get the UUID of a player entity
#> Storage
#  @uuid (out): the UUID of the player entity
#> Context
#  @executor (in): the player entity
#> Return void

data modify storage io: uuid set from entity @s UUID
