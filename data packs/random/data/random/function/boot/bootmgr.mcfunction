#
# random:boot/bootmgr
#

# Load constants
function random:define/const

# Reseed the random number generator
execute store result score ::in seed run function time:mc_time/get_game_time
function random:srandlcg
