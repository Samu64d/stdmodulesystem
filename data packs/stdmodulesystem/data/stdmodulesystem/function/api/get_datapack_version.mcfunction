#
# stdmodulesystem:api/get_datapack_version
#
# Get the version of a datapack
#> Storage
#  @datapack_id (in): datapack id
#> Return data
#  datapack version

function stdmodulesystem:api/get_datapack_manifest
data modify storage stdmodulesystem:volatile version set value 1
data modify storage stdmodulesystem:volatile version set from storage io: manifest.version
return run data get storage stdmodulesystem:volatile version 1.0
