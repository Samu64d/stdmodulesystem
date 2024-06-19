#
# math:bitwise/map
#
# Map an integer number to a group of bit flags
#> Scores
#  @value (in): the number
#  @bit_1 (out): the value of the bit 1
#  @bit_2 (out): the value of the bit 2
#  @bit_3 (out): the value of the bit 3
#  @bit_4 (out): the value of the bit 4
#  @bit_5 (out): the value of the bit 5
#  @bit_6 (out): the value of the bit 6
#  @bit_7 (out): the value of the bit 7
#  @bit_8 (out): the value of the bit 8
#  @bit_9 (out): the value of the bit 9
#  @bit_10 (out): the value of the bit 10
#  @bit_11 (out): the value of the bit 11
#  @bit_12 (out): the value of the bit 12
#  @bit_13 (out): the value of the bit 13
#  @bit_14 (out): the value of the bit 14
#  @bit_15 (out): the value of the bit 15
#  @bit_16 (out): the value of the bit 16
#  @bit_17 (out): the value of the bit 17
#  @bit_18 (out): the value of the bit 18
#  @bit_19 (out): the value of the bit 19
#  @bit_20 (out): the value of the bit 20
#  @bit_21 (out): the value of the bit 21
#  @bit_22 (out): the value of the bit 22
#  @bit_23 (out): the value of the bit 23
#  @bit_24 (out): the value of the bit 24
#  @bit_25 (out): the value of the bit 25
#  @bit_26 (out): the value of the bit 26
#  @bit_27 (out): the value of the bit 27
#  @bit_28 (out): the value of the bit 28
#  @bit_29 (out): the value of the bit 29
#  @bit_30 (out): the value of the bit 30
#  @bit_31 (out): the value of the bit 31
#  @bit_32 (out): the value of the bit 32
#> Return void

scoreboard players operation ::math value = ::in value
execute if score ::math value matches ..-1 run scoreboard players operation ::math value *= ::const NEGONE

# Bit 32
execute store success score ::out bit_32 if score ::in value matches ..-1

# Bit 31
execute store success score ::out bit_31 if score ::math value >= ::const BIT_31
execute if score ::math value >= ::const BIT_31 run scoreboard players operation ::math value -= ::const BIT_31

# Bit 30
execute store success score ::out bit_30 if score ::math value >= ::const BIT_30
execute if score ::math value >= ::const BIT_30 run scoreboard players operation ::math value -= ::const BIT_30

# Bit 29
execute store success score ::out bit_29 if score ::math value >= ::const BIT_29
execute if score ::math value >= ::const BIT_29 run scoreboard players operation ::math value -= ::const BIT_29

# Bit 28
execute store success score ::out bit_28 if score ::math value >= ::const BIT_28
execute if score ::math value >= ::const BIT_28 run scoreboard players operation ::math value -= ::const BIT_28

# Bit 27
execute store success score ::out bit_27 if score ::math value >= ::const BIT_27
execute if score ::math value >= ::const BIT_27 run scoreboard players operation ::math value -= ::const BIT_27

# Bit 26
execute store success score ::out bit_26 if score ::math value >= ::const BIT_26
execute if score ::math value >= ::const BIT_26 run scoreboard players operation ::math value -= ::const BIT_26

# Bit 25
execute store success score ::out bit_25 if score ::math value >= ::const BIT_25
execute if score ::math value >= ::const BIT_25 run scoreboard players operation ::math value -= ::const BIT_25

# Bit 24
execute store success score ::out bit_24 if score ::math value >= ::const BIT_24
execute if score ::math value >= ::const BIT_24 run scoreboard players operation ::math value -= ::const BIT_24

# Bit 23
execute store success score ::out bit_23 if score ::math value >= ::const BIT_23
execute if score ::math value >= ::const BIT_23 run scoreboard players operation ::math value -= ::const BIT_23

# Bit 22
execute store success score ::out bit_22 if score ::math value >= ::const BIT_22
execute if score ::math value >= ::const BIT_22 run scoreboard players operation ::math value -= ::const BIT_22

# Bit 21
execute store success score ::out bit_21 if score ::math value >= ::const BIT_21
execute if score ::math value >= ::const BIT_21 run scoreboard players operation ::math value -= ::const BIT_21

# Bit 20
execute store success score ::out bit_20 if score ::math value >= ::const BIT_20
execute if score ::math value >= ::const BIT_20 run scoreboard players operation ::math value -= ::const BIT_20

# Bit 19
execute store success score ::out bit_19 if score ::math value >= ::const BIT_19
execute if score ::math value >= ::const BIT_19 run scoreboard players operation ::math value -= ::const BIT_19

# Bit 18
execute store success score ::out bit_18 if score ::math value >= ::const BIT_18
execute if score ::math value >= ::const BIT_18 run scoreboard players operation ::math value -= ::const BIT_18

# Bit 17
execute store success score ::out bit_17 if score ::math value >= ::const BIT_17
execute if score ::math value >= ::const BIT_17 run scoreboard players operation ::math value -= ::const BIT_17

# Bit 16
execute store success score ::out bit_16 if score ::math value >= ::const BIT_16
execute if score ::math value >= ::const BIT_16 run scoreboard players operation ::math value -= ::const BIT_16

# Bit 15
execute store success score ::out bit_15 if score ::math value >= ::const BIT_15
execute if score ::math value >= ::const BIT_15 run scoreboard players operation ::math value -= ::const BIT_15

# Bit 14
execute store success score ::out bit_14 if score ::math value >= ::const BIT_14
execute if score ::math value >= ::const BIT_14 run scoreboard players operation ::math value -= ::const BIT_14

# Bit 13
execute store success score ::out bit_13 if score ::math value >= ::const BIT_13
execute if score ::math value >= ::const BIT_13 run scoreboard players operation ::math value -= ::const BIT_13

# Bit 12
execute store success score ::out bit_12 if score ::math value >= ::const BIT_12
execute if score ::math value >= ::const BIT_12 run scoreboard players operation ::math value -= ::const BIT_12

# Bit 11
execute store success score ::out bit_11 if score ::math value >= ::const BIT_11
execute if score ::math value >= ::const BIT_11 run scoreboard players operation ::math value -= ::const BIT_11

# Bit 10
execute store success score ::out bit_10 if score ::math value >= ::const BIT_10
execute if score ::math value >= ::const BIT_10 run scoreboard players operation ::math value -= ::const BIT_10

# Bit 9
execute store success score ::out bit_9 if score ::math value >= ::const BIT_9
execute if score ::math value >= ::const BIT_9 run scoreboard players operation ::math value -= ::const BIT_9

# Bit 8
execute store success score ::out bit_8 if score ::math value >= ::const BIT_8
execute if score ::math value >= ::const BIT_8 run scoreboard players operation ::math value -= ::const BIT_8

# Bit 7
execute store success score ::out bit_7 if score ::math value >= ::const BIT_7
execute if score ::math value >= ::const BIT_7 run scoreboard players operation ::math value -= ::const BIT_7

# Bit 6
execute store success score ::out bit_6 if score ::math value >= ::const BIT_6
execute if score ::math value >= ::const BIT_6 run scoreboard players operation ::math value -= ::const BIT_6

# Bit 5
execute store success score ::out bit_5 if score ::math value >= ::const BIT_5
execute if score ::math value >= ::const BIT_5 run scoreboard players operation ::math value -= ::const BIT_5

# Bit 4
execute store success score ::out bit_4 if score ::math value >= ::const BIT_4
execute if score ::math value >= ::const BIT_4 run scoreboard players operation ::math value -= ::const BIT_4

# Bit 3
execute store success score ::out bit_3 if score ::math value >= ::const BIT_3
execute if score ::math value >= ::const BIT_3 run scoreboard players operation ::math value -= ::const BIT_3

# Bit 2
execute store success score ::out bit_2 if score ::math value >= ::const BIT_2
execute if score ::math value >= ::const BIT_2 run scoreboard players operation ::math value -= ::const BIT_2

# Bit 1
execute store success score ::out bit_1 if score ::math value >= ::const BIT_1
