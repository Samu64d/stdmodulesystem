#
# test:stdmodulesystem/get_datapack_manifest
#

data modify storage io: manifest set value {\
	version: 1,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
		{id: "collections", version: 1},\
		{id: "io", version: 1},\
		{id: "string", version: 1},\
		{id: "math", version: 1},\
		{id: "obj", version: 1},\
		{id: "soundsystem", version: 1},\
		{id: "server", version: 1},\
		{id: "minecraft_world_api", version: 1}\
	]\
}

return 1
