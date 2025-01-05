#
# minecraft_entity_api:entity/get_block_pos_as_values
#
# Get the block position values of the block at which an entity is standing up
#> Storage
#  @x (out): the block x position
#  @y (out): the block y position
#  @z (out): the block z position
#> Context
#  @executor (in): the entity
#> Return void

execute store result score ::out x run data get entity @s Pos[0]
execute store result score ::out y run data get entity @s Pos[1]
execute store result score ::out z run data get entity @s Pos[2]
