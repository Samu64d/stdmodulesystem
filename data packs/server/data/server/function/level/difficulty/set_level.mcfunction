#
# server:level/difficulty/set_level
#
# Set the difficulty level
#> Scores
#  @level (in): the difficulty level
#> Return void

# Peaceful
execute if score ::in level = ::server::level::enum_difficulties PEACEFUL run difficulty peaceful

# Easy
execute if score ::in level = ::server::level::enum_difficulties EASY run difficulty easy

# Normal
execute if score ::in level = ::server::level::enum_difficulties NORMAL run difficulty normal

# Hard
execute if score ::in level = ::server::level::enum_difficulties HARD run difficulty hard
