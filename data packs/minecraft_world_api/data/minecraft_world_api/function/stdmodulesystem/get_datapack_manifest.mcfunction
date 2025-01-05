#
# minecraft_world_api:stdmodulesystem/get_datapack_manifest
#

data modify storage io: manifest set value {\
	version: 1,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
    	{id: "math", version: 1},\
		{id: "number", version: 1},\
    	{id: "data_observer", version: 1},\
    	{id: "utils", version: 1},\
    	{id: "nmath", version: 1},\
    	{id: "minecraft_registries", version: 1},\
		{id: "context", version: 1}\
	]\
}

return 1
