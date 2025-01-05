#
# uuid:array_to_string
#
# Convert a 128 bit length uuid slitted on a 32 bit word array into a hexadecimal string
#> Storage
#  @uuid (inout): the uuid
#> Return void

# First word
execute store result score ::uuid temp0 run data get storage io: uuid[0] 1.0
execute store result score ::uuid temp1 run data get storage io: uuid[0] 1.0
execute store result storage io: 0 int 1 run scoreboard players operation ::uuid temp0 %= ::int 256
execute store result score ::uuid temp2 run scoreboard players operation ::uuid temp1 /= ::int 256
execute store result storage io: 1 int 1 run scoreboard players operation ::uuid temp1 %= ::int 256
execute store result score ::uuid temp3 run scoreboard players operation ::uuid temp2 /= ::int 256
execute store result storage io: 2 int 1 run scoreboard players operation ::uuid temp2 %= ::int 256
execute store result storage io: 3 int 1 run scoreboard players operation ::uuid temp3 /= ::int 256

# Second word
execute store result score ::uuid temp0 run data get storage io: uuid[1] 1.0
execute store result score ::uuid temp1 run data get storage io: uuid[1] 1.0
execute store result storage io: 4 int 1 run scoreboard players operation ::uuid temp0 %= ::int 256
execute store result score ::uuid temp2 run scoreboard players operation ::uuid temp1 /= ::int 256
execute store result storage io: 5 int 1 run scoreboard players operation ::uuid temp1 %= ::int 256
execute store result score ::uuid temp3 run scoreboard players operation ::uuid temp2 /= ::int 256
execute store result storage io: 6 int 1 run scoreboard players operation ::uuid temp2 %= ::int 256
execute store result storage io: 7 int 1 run scoreboard players operation ::uuid temp3 /= ::int 256

# Third word
execute store result score ::uuid temp0 run data get storage io: uuid[2] 1.0
execute store result score ::uuid temp1 run data get storage io: uuid[2] 1.0
execute store result storage io: 8 int 1 run scoreboard players operation ::uuid temp0 %= ::int 256
execute store result score ::uuid temp2 run scoreboard players operation ::uuid temp1 /= ::int 256
execute store result storage io: 9 int 1 run scoreboard players operation ::uuid temp1 %= ::int 256
execute store result score ::uuid temp3 run scoreboard players operation ::uuid temp2 /= ::int 256
execute store result storage io: a int 1 run scoreboard players operation ::uuid temp2 %= ::int 256
execute store result storage io: b int 1 run scoreboard players operation ::uuid temp3 /= ::int 256

# Fourth word
execute store result score ::uuid temp0 run data get storage io: uuid[3] 1.0
execute store result score ::uuid temp1 run data get storage io: uuid[3] 1.0
execute store result storage io: c int 1 run scoreboard players operation ::uuid temp0 %= ::int 256
execute store result score ::uuid temp2 run scoreboard players operation ::uuid temp1 /= ::int 256
execute store result storage io: d int 1 run scoreboard players operation ::uuid temp1 %= ::int 256
execute store result score ::uuid temp3 run scoreboard players operation ::uuid temp2 /= ::int 256
execute store result storage io: e int 1 run scoreboard players operation ::uuid temp2 %= ::int 256
execute store result storage io: f int 1 run scoreboard players operation ::uuid temp3 /= ::int 256

# Get hexadecimal characters
function uuid:array_to_string/get with storage io:

# Compose final result
function uuid:array_to_string/compose with storage io:
