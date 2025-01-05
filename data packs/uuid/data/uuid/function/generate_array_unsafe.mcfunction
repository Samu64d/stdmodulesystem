#
# uuid:generate_array_unsafe
#
# Generate an unsafe 128 bit length uuid slitted on a 32 bit word array
#> Storage
#  @uuid (out): the uuid
#> Return void

# Create object
data modify storage io: uuid set value [I; 0, 0, 0, 0]

# First word
execute store result storage io: uuid[0] int 1.0 run function uuid:generate_array_unsafe/generate_word

# Second word
execute store result storage io: uuid[1] int 1.0 run function uuid:generate_array_unsafe/generate_word

# Third word
execute store result storage io: uuid[2] int 1.0 run function uuid:generate_array_unsafe/generate_word

# Fourth word
execute store result storage io: uuid[3] int 1.0 run function uuid:generate_array_unsafe/generate_word
