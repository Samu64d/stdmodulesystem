#
# stdmodulesystem:datapack_manager/available_datapack/get_status
#
# Get the status of an available datapack
#> Scores
#  @status (out): the status
#> Storage
#  @available_datapack (in): the available datapack
#> Return void

return run data get storage io: available_datapack.status 1.0
