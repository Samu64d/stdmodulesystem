#
# random:srandlcg
#
# Reseed the linear congruential generator with a seed
#> Scores
#  @seed (in): the seed
#> Return void

scoreboard players operation ::in seed %= ::random::const LCG_M
scoreboard players operation ::random last_lcg_value = ::in seed
