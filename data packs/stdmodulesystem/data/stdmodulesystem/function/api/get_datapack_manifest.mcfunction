#
# stdmodulesystem:api/get_datapack_manifest
#
# Get the manifest of a datapack
#> Storage
#  @datapack_id (in): datapack id
#  @manifest (out): datapack manifest
#> Return void

data modify storage io: manifest set value {version: 1, dependency_list: []}
function stdmodulesystem:api/get_datapack_manifest/get with storage io:
