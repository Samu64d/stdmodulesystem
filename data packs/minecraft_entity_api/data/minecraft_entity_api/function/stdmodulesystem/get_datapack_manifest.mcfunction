#
# minecraft_entity_api:stdmodulesystem/get_datapack_manifest
#

data modify storage io: manifest set value {\
	version: 1,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
		{id: "math", version: 1},\
		{id: "context", version: 1},\
		{id: "nmath", version: 1},\
		{id: "minecraft_registries", version: 1},\
		{id: "minecraft_world_api", version: 1}\
	]\
}

return 1
