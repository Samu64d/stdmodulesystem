#
# stdmodulesystem:api/get_datapack_dependencies
#
# Get the dependencies list of a datapack
#> Storage
#  @datapack_id (in): datapack id
#  @dependency_list (out): datapack dependencies list
#> Return void

function stdmodulesystem:api/get_datapack_manifest
data modify storage io: dependency_list set value []
data modify storage io: dependency_list set from storage io: manifest.dependency_list
