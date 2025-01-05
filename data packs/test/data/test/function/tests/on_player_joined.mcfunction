#
# test:tests/on_player_joined
#

tellraw @a [{"text":"Player ", "color":"yellow"}, {"nbt": "data.name", "storage": "io:"}, " with uuid ", {"nbt": "data.uuid", "storage": "io:"}, " joined the server"]
