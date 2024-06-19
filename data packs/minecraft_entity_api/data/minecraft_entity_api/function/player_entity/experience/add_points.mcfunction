#
# mineweather:server/player_entity/experience/add_points
#
# Increase player experience points
# context:       <position: none, executor: the player>
# arguments:     <value: points value> {}
# return values: <> {}

# Check for negative values
execute if score ::in value matches ..-1 run scoreboard players set ::in value 0

# Bit 31
execute if score ::in value >= ::const BIT_31 run experience add @s 1073741824 points
execute if score ::in value >= ::const BIT_31 run scoreboard players operation ::in value -= ::const BIT_31

# Bit 30
execute if score ::in value >= ::const BIT_30 run experience add @s 536870912 points
execute if score ::in value >= ::const BIT_30 run scoreboard players operation ::in value -= ::const BIT_30

# Bit 29
execute if score ::in value >= ::const BIT_29 run experience add @s 268435456 points
execute if score ::in value >= ::const BIT_29 run scoreboard players operation ::in value -= ::const BIT_29

# Bit 28
execute if score ::in value >= ::const BIT_28 run experience add @s 134217728 points
execute if score ::in value >= ::const BIT_28 run scoreboard players operation ::in value -= ::const BIT_28

# Bit 27
execute if score ::in value >= ::const BIT_27 run experience add @s 67108864 points
execute if score ::in value >= ::const BIT_27 run scoreboard players operation ::in value -= ::const BIT_27

# Bit 26
execute if score ::in value >= ::const BIT_26 run experience add @s 33554432 points
execute if score ::in value >= ::const BIT_26 run scoreboard players operation ::in value -= ::const BIT_26

# Bit 25
execute if score ::in value >= ::const BIT_25 run experience add @s 16777216 points
execute if score ::in value >= ::const BIT_25 run scoreboard players operation ::in value -= ::const BIT_25

# Bit 24
execute if score ::in value >= ::const BIT_24 run experience add @s 8388608 points
execute if score ::in value >= ::const BIT_24 run scoreboard players operation ::in value -= ::const BIT_24

# Bit 23
execute if score ::in value >= ::const BIT_23 run experience add @s 4194304 points
execute if score ::in value >= ::const BIT_23 run scoreboard players operation ::in value -= ::const BIT_23

# Bit 22
execute if score ::in value >= ::const BIT_22 run experience add @s 2097152 points
execute if score ::in value >= ::const BIT_22 run scoreboard players operation ::in value -= ::const BIT_22

# Bit 21
execute if score ::in value >= ::const BIT_21 run experience add @s 1048576 points
execute if score ::in value >= ::const BIT_21 run scoreboard players operation ::in value -= ::const BIT_21

# Bit 20
execute if score ::in value >= ::const BIT_20 run experience add @s 524288 points
execute if score ::in value >= ::const BIT_20 run scoreboard players operation ::in value -= ::const BIT_20

# Bit 19
execute if score ::in value >= ::const BIT_19 run experience add @s 262144 points
execute if score ::in value >= ::const BIT_19 run scoreboard players operation ::in value -= ::const BIT_19

# Bit 18
execute if score ::in value >= ::const BIT_18 run experience add @s 131072 points
execute if score ::in value >= ::const BIT_18 run scoreboard players operation ::in value -= ::const BIT_18

# Bit 17
execute if score ::in value >= ::const BIT_17 run experience add @s 65536 points
execute if score ::in value >= ::const BIT_17 run scoreboard players operation ::in value -= ::const BIT_17

# Bit 16
execute if score ::in value >= ::const BIT_16 run experience add @s 32768 points
execute if score ::in value >= ::const BIT_16 run scoreboard players operation ::in value -= ::const BIT_16

# Bit 15
execute if score ::in value >= ::const BIT_15 run experience add @s 16384 points
execute if score ::in value >= ::const BIT_15 run scoreboard players operation ::in value -= ::const BIT_15

# Bit 14
execute if score ::in value >= ::const BIT_14 run experience add @s 8192 points
execute if score ::in value >= ::const BIT_14 run scoreboard players operation ::in value -= ::const BIT_14

# Bit 13
execute if score ::in value >= ::const BIT_13 run experience add @s 4096 points
execute if score ::in value >= ::const BIT_13 run scoreboard players operation ::in value -= ::const BIT_13

# Bit 12
execute if score ::in value >= ::const BIT_12 run experience add @s 2048 points
execute if score ::in value >= ::const BIT_12 run scoreboard players operation ::in value -= ::const BIT_12

# Bit 11
execute if score ::in value >= ::const BIT_11 run experience add @s 1024 points
execute if score ::in value >= ::const BIT_11 run scoreboard players operation ::in value -= ::const BIT_11

# Bit 10
execute if score ::in value >= ::const BIT_10 run experience add @s 512 points
execute if score ::in value >= ::const BIT_10 run scoreboard players operation ::in value -= ::const BIT_10

# Bit 9
execute if score ::in value >= ::const BIT_9 run experience add @s 256 points
execute if score ::in value >= ::const BIT_9 run scoreboard players operation ::in value -= ::const BIT_9

# Bit 8
execute if score ::in value >= ::const BIT_8 run experience add @s 128 points
execute if score ::in value >= ::const BIT_8 run scoreboard players operation ::in value -= ::const BIT_8

# Bit 7
execute if score ::in value >= ::const BIT_7 run experience add @s 64 points
execute if score ::in value >= ::const BIT_7 run scoreboard players operation ::in value -= ::const BIT_7

# Bit 6
execute if score ::in value >= ::const BIT_6 run experience add @s 32 points
execute if score ::in value >= ::const BIT_6 run scoreboard players operation ::in value -= ::const BIT_6

# Bit 5
execute if score ::in value >= ::const BIT_5 run experience add @s 16 points
execute if score ::in value >= ::const BIT_5 run scoreboard players operation ::in value -= ::const BIT_5

# Bit 4
execute if score ::in value >= ::const BIT_4 run experience add @s 8 points
execute if score ::in value >= ::const BIT_4 run scoreboard players operation ::in value -= ::const BIT_4

# Bit 3
execute if score ::in value >= ::const BIT_3 run experience add @s 4 points
execute if score ::in value >= ::const BIT_3 run scoreboard players operation ::in value -= ::const BIT_3

# Bit 2
execute if score ::in value >= ::const BIT_2 run experience add @s 2 points
execute if score ::in value >= ::const BIT_2 run scoreboard players operation ::in value -= ::const BIT_2

# Bit 1
execute if score ::in value >= ::const BIT_1 run experience add @s 1 points
