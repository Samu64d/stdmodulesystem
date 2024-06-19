#
# string:pad_end
#
# Pads at the end a string with another string until the string reaches the given length
#> Scores
#  @length (in): the length of the string
#> Storage
#  @string (inout): the string
#  @pad (in): the pad string
#> Return void

scoreboard players operation ::in from_the_end = ::const TRUE
function string:internal/pad
