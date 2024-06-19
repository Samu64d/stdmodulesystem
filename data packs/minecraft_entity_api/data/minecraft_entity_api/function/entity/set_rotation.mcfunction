#
# mineweather:server/entity/set_rotation
#
# Set the rotation vector of an entity. This function will fails if the entity is of player type
#> Storage
#  @rotation (in): the rotation vector
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

return run data modify entity @s Rotation set from storage io: rotation
