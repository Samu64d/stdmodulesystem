#
# world_handler:stdmodulesystem/get_datapack_manifest
#

data modify storage io: manifest set value {\
	version: 1,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
		{id: "collections", version: 1},\
    	{id: "event_system", version: 1},\
    	{id: "math", version: 1},\
    	{id: "time", version: 1},\
    	{id: "utils", version: 1},\
    	{id: "uuid", version: 1},\
    	{id: "data_observer", version: 1},\
		{id: "context", version: 1},\
    	{id: "server", version: 1},\
    	{id: "minecraft_world_api", version: 1}\
	]\
}

return 1
