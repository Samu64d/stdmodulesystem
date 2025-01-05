#
# minecraft_entity_api:entity/set_gravity
#
# Set an entity gravity. This function will fails if the entity is of player type
#> Scores
#  @gravity (in): boolean flag
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Copy data
execute store success storage minecraft_entity_api:volatile entity.temp_value byte 1.0 if score ::in gravity = ::const FALSE

# Set data
return run data modify entity @s NoGravity set from storage minecraft_entity_api:volatile entity.temp_value
