#
# random:define/const
#

# Used in randlcg

# Modulus
scoreboard objectives add LCG_M dummy

# Multiplier
scoreboard objectives add LCG_A dummy

# M / a
scoreboard objectives add LCG_Q dummy

# M % a
scoreboard objectives add LCG_R dummy

# Increment
scoreboard objectives add LCG_C dummy

# Bits
scoreboard objectives add BIT_1 dummy
scoreboard objectives add BIT_2 dummy
scoreboard objectives add BIT_3 dummy
scoreboard objectives add BIT_4 dummy
scoreboard objectives add BIT_5 dummy
scoreboard objectives add BIT_6 dummy
scoreboard objectives add BIT_7 dummy
scoreboard objectives add BIT_8 dummy
scoreboard objectives add BIT_9 dummy
scoreboard objectives add BIT_10 dummy
scoreboard objectives add BIT_11 dummy
scoreboard objectives add BIT_12 dummy
scoreboard objectives add BIT_13 dummy
scoreboard objectives add BIT_14 dummy
scoreboard objectives add BIT_15 dummy
scoreboard objectives add BIT_16 dummy

scoreboard players set ::random::const LCG_M 2147483647
scoreboard players set ::random::const LCG_A 48271
scoreboard players set ::random::const LCG_Q 44488
scoreboard players set ::random::const LCG_R 3399
scoreboard players set ::random::const LCG_C 0

scoreboard players set ::random::const BIT_1 1
scoreboard players set ::random::const BIT_2 2
scoreboard players set ::random::const BIT_3 4
scoreboard players set ::random::const BIT_4 8
scoreboard players set ::random::const BIT_5 16
scoreboard players set ::random::const BIT_6 32
scoreboard players set ::random::const BIT_7 64
scoreboard players set ::random::const BIT_8 128
scoreboard players set ::random::const BIT_9 256
scoreboard players set ::random::const BIT_10 512
scoreboard players set ::random::const BIT_11 1024
scoreboard players set ::random::const BIT_12 2048
scoreboard players set ::random::const BIT_13 4096
scoreboard players set ::random::const BIT_14 8192
scoreboard players set ::random::const BIT_15 16384
scoreboard players set ::random::const BIT_16 32768
