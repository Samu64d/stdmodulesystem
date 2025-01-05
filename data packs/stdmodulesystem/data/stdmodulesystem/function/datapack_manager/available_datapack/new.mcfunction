#
# stdmodulesystem:datapack_manager/available_datapack/new
#
# Create a new available datapack
#> Scores
#  @status (in): the status
#> Storage
#  @datapack_id (in): the datapack id
#  @available_datapack (out): the available datapack
#> Return void

data modify storage io: available_datapack set value {}

# Set name
data modify storage io: available_datapack.id set from storage io: datapack_id

# Set status
function stdmodulesystem:datapack_manager/available_datapack/set_status
