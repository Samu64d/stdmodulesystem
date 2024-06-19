#
# mineweather:server/entity/set_pos
#
# Set the position vector of an entity. This function will fails if the entity is of player type
#> Storage
#  @position (in): the positon vector
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

return run data modify entity @s Pos set from storage io: position
