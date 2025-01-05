#
# stdmodulesystem:datapack_manager/available_datapack/set_status
#
# Set the status of an available datapack
#> Scores
#  @status (in): the status
#> Storage
#  @available_datapack (in): the available datapack
#> Return void

execute store result storage io: available_datapack.status int 1.0 run scoreboard players get ::in status
