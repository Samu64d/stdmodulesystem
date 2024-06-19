#
# random:stdmodulesystem/get_datapack_manifest
#

data modify storage io: manifest set value {\
	version: 1,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
    	{id: "time", version: 1},\
		{id: "math", version: 1}\
	]\
}

return 1
