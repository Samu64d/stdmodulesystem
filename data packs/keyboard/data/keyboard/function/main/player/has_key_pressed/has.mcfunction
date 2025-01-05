#
# keyboard:main/player/has_key_pressed/has
#

$return run execute if predicate \
{\
	"condition": "minecraft:entity_properties",\
	"entity": "this",\
	"predicate": {\
		"type_specific": {\
			"type": "minecraft:player",\
			"input": {\
				"$(key_id)": true\
			}\
		}\
	}\
}
