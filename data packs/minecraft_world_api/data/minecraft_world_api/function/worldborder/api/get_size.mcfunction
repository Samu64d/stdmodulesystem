#
# minecraft_world_api:worldborder/api/get_size
#
# Get the size of the world border
#> Storage
#  @size (out): the world border size
#> Return void

execute store result storage io: size float 1.0 run worldborder get
