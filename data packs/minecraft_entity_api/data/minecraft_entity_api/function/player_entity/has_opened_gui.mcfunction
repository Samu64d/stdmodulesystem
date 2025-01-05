#
# mineweather:server/player_entity/has_opened_gui
#
# Check if the player has an opened recipe book gui
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <has_opened_gui: boolean flag> {}

execute store result score ::out has_opened_gui run data get entity @s recipeBook.isGuiOpen 1.0
