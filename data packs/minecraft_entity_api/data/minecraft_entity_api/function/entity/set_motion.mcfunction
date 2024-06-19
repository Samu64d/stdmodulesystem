#
# minecraft_entity_api:entity/set_motion
#
# Set the motion vector of a entity. This function will fails if the entity is of player type
#> Storage
#  @motion (in): the motion vector
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

return run data modify entity @s Motion set from storage io: motion
