#
# server:player_entity/get_dimension
#
# Get the dimension of a player entity
#> Storage
#  @uuid (out): the dimension of the player entity
#> Context
#  @executor (in): the player entity
#> Return void

data modify storage io: dimension set from entity @s Dimension
