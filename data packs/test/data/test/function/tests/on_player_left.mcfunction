#
# test:tests/on_player_left
#

tellraw @a [{"text":"Player ", "color":"yellow"}, {"nbt": "data.name", "storage": "io:"}, " with uuid ", {"nbt": "data.uuid", "storage": "io:"}, " left the server"]
