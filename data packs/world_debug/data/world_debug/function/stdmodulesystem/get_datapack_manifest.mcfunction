#
# world_debug:stdmodulesystem/get_datapack_manifest
#

data modify storage io: manifest set value {\
	version: 1,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
		{id: "event_system", version: 1},\
		{id: "math", version: 1},\
		{id: "minecraft_world_api", version: 1},\
		{id: "world_handler", version: 1}\
	]\
}

return 1
