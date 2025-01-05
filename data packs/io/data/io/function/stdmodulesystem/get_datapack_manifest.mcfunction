#
# io:stdmodulesystem/get_datapack_manifest
#

data modify storage io: manifest set value {\
	version: 1,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
		{id: "collections", version: 1},\
		{id: "string", version: 1}\
	]\
}

return 1
