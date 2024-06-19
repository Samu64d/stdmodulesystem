#
# mineweather:server/living_entity/is_jumping
#
# Check if the entity is jumping
# context:       <position: none, executor: the living entity>
# arguments:     <> {}
# return values: <is_jumping: boolean flag> {}

# Check for gravity
function mineweather:server/entity/has_gravity
scoreboard players operation ::entity_living has_gravity = ::out has_gravity

# Check for on ground
function mineweather:server/entity/is_on_ground
scoreboard players operation ::entity_living is_on_ground = ::out is_on_ground

# Check for falling
function mineweather:server/entity/is_falling
scoreboard players operation ::entity_living is_falling = ::out is_falling

scoreboard players operation ::out is_jumping = ::const FALSE
execute if score ::entity_living has_gravity = ::const TRUE if score ::entity_living is_on_ground = ::const FALSE if score ::entity_living is_falling = ::const FALSE run scoreboard players operation ::out is_jumping = ::const TRUE
