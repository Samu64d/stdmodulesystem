#
# uuid:generate_array_unsafe/generate_word
#

# Generate range
execute store result score ::uuid temp0 run function random:randbool
execute if score ::uuid temp0 = ::const FALSE run scoreboard players operation ::in min = ::const INT_MIN
execute if score ::uuid temp0 = ::const FALSE run scoreboard players set ::in max 0
execute if score ::uuid temp0 = ::const TRUE run scoreboard players set ::in min 0
execute if score ::uuid temp0 = ::const TRUE run scoreboard players operation ::in max = ::const INT_MAX

# Return data
return run function random:randlcg
