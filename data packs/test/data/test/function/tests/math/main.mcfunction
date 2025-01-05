#
# test:tests/math/main
#

# Abs
scoreboard players set ::in value -40
execute store result score ::test value run function math:abs

# Acos
scoreboard players set ::in t 88
execute store result score ::test value run function math:acos

# Acosf
scoreboard players set ::in t 9998
scoreboard players set ::in p 4
execute store result score ::test value run function math:acosf

# Acosh
scoreboard players set ::in t 1000
execute store result score ::test value run function math:acosh

# Acoshf
scoreboard players set ::in t 13444
scoreboard players set ::in p 3
execute store result score ::test value run function math:acoshf

# Asin
scoreboard players set ::in t 100
execute store result score ::test value run function math:asin

# Asinf
scoreboard players set ::in t 100
scoreboard players set ::in p 3
execute store result score ::test value run function math:asinf

# Asinh
scoreboard players set ::in t -450
execute store result score ::test value run function math:asinh

# Asinhf
scoreboard players set ::in t 10022
scoreboard players set ::in p 3
execute store result score ::test value run function math:asinhf

# Atan
scoreboard players set ::in t 150
execute store result score ::test value run function math:atan

# Atan2
scoreboard players set ::in x 4400
scoreboard players set ::in y 1500
execute store result score ::test value run function math:atan2

# Atan2f
scoreboard players set ::in x 1000
scoreboard players set ::in y 1567
scoreboard players set ::in p 4
execute store result score ::test value run function math:atan2f

# Atanf
scoreboard players set ::in t 1411
scoreboard players set ::in p 3
execute store result score ::test value run function math:atanf

# Atanh
scoreboard players set ::in t 76
execute store result score ::test value run function math:atanh

# Atanhf
scoreboard players set ::in t -860
scoreboard players set ::in p 3
execute store result score ::test value run function math:atanhf

# Cbrt
scoreboard players set ::in value 100000000
execute store result score ::test value run function math:cbrt

# Cbrtf
scoreboard players set ::in value 1411
scoreboard players set ::in p 3
execute store result score ::test value run function math:cbrtf

# Ceil
scoreboard players set ::in value -154
execute store result score ::test value run function math:ceil

# Ceilf
scoreboard players set ::in value 456
scoreboard players set ::in p 3
execute store result score ::test value run function math:ceilf

# Clamp
scoreboard players set ::in value 120
scoreboard players set ::in min 44
scoreboard players set ::in max 100
execute store result score ::test value run function math:clamp

# Clampeq
scoreboard players set ::in value -120
scoreboard players set ::in max 100
execute store result score ::test value run function math:clampeq

# Cos
scoreboard players set ::in angle 0
execute store result score ::test value run function math:cos

# Cos2
scoreboard players set ::in angle 662
execute store result score ::test value run function math:cos2

# Cos2f
scoreboard players set ::in angle 1570
scoreboard players set ::in p 3
execute store result score ::test value run function math:cos2f

# Cosdeg
scoreboard players set ::in angle 551
execute store result score ::test value run function math:cosdeg

# Cosdegf
scoreboard players set ::in angle 100
scoreboard players set ::in p 1
execute store result score ::test value run function math:cosdegf

# Cosf
scoreboard players set ::in angle -1200
scoreboard players set ::in p 3
execute store result score ::test value run function math:cosf

# Cosh
scoreboard players set ::in angle 109
execute store result score ::test value run function math:cosh

# Coshf
scoreboard players set ::in angle 10950
scoreboard players set ::in p 3
execute store result score ::test value run function math:coshf

# Div
scoreboard players set ::in value0 174466
scoreboard players set ::in value1 1211
execute store result score ::test value run function math:div

# Divf
scoreboard players set ::in value0 58966
scoreboard players set ::in value1 65437
scoreboard players set ::in p 3
execute store result score ::test value run function math:divf

# Exp
scoreboard players set ::in value 1023
execute store result score ::test value run function math:exp

# Expf
scoreboard players set ::in value -500
scoreboard players set ::in p 4
execute store result score ::test value run function math:expf

# Floor
scoreboard players set ::in value 1299
execute store result score ::test value run function math:floor

# Floorf
scoreboard players set ::in value -11
scoreboard players set ::in p 1
execute store result score ::test value run function math:floorf

# From storage
data modify storage io: value set value 3.4f
function math:from_storage

# From storagef
data modify storage io: value set value 3.4f
scoreboard players set ::in p 3
function math:from_storagef

# Get fractional part
scoreboard players set ::in value -356
execute store result score ::test value run function math:get_fractional_part

# Get fractional partf
scoreboard players set ::in value 217
scoreboard players set ::in p 3
execute store result score ::test value run function math:get_fractional_partf

# Get integer part
scoreboard players set ::in value 11044
execute store result score ::test value run function math:get_integer_part

# Get integer partf
scoreboard players set ::in value -18706
scoreboard players set ::in p 3
execute store result score ::test value run function math:get_integer_partf

# Inv
scoreboard players set ::in value 123
execute store result score ::test value run function math:inv

# Invf
scoreboard players set ::in value 56076
scoreboard players set ::in p 4
execute store result score ::test value run function math:invf

# Is even
scoreboard players set ::in value 8
execute store result score ::test value run function math:is_even

# Is evenf
scoreboard players set ::in value 11000
scoreboard players set ::in p 3
execute store result score ::test value run function math:is_evenf

# Is eveni
scoreboard players set ::in value 8
execute store result score ::test value run function math:is_eveni

# Is in range
scoreboard players set ::in value -199
scoreboard players set ::in min -200
scoreboard players set ::in max 200
execute store result score ::test value run function math:is_in_range

# Is nan
scoreboard players reset ::in value
execute store result score ::test value run function math:is_nan

# Lerp
scoreboard players set ::in a 100
scoreboard players set ::in b 144
scoreboard players set ::in t 55
execute store result score ::test value run function math:lerp

# Lerpf
scoreboard players set ::in a -1300
scoreboard players set ::in b 1300
scoreboard players set ::in t 300
scoreboard players set ::in p 3
execute store result score ::test value run function math:lerpf

# Log
scoreboard players set ::in value 50
execute store result score ::test value run function math:log

# Log2
scoreboard players set ::in value 15676932
execute store result score ::test value run function math:log2

# Log2f
scoreboard players set ::in value 16000
scoreboard players set ::in p 3
execute store result score ::test value run function math:log2f

# Log10
scoreboard players set ::in value 440505
execute store result score ::test value run function math:log10

# Log10f
scoreboard players set ::in value 101122
scoreboard players set ::in p 4
execute store result score ::test value run function math:log10f

# Logf
scoreboard players set ::in value 6932
scoreboard players set ::in p 4
execute store result score ::test value run function math:logf

# Mul
scoreboard players set ::in value0 2233
scoreboard players set ::in value1 12224444
execute store result score ::test value run function math:mul

# Mulf
scoreboard players set ::in value0 58966
scoreboard players set ::in value1 65437
scoreboard players set ::in p 3
execute store result score ::test value run function math:mulf

# Pow
scoreboard players set ::in value 250
scoreboard players set ::in n 1040
execute store result score ::test value run function math:pow

# Powf
scoreboard players set ::in value 250
scoreboard players set ::in n -1000
scoreboard players set ::in p 3
execute store result score ::test value run function math:powf

# Round
scoreboard players set ::in value -451
execute store result score ::test value run function math:round

# Roundf
scoreboard players set ::in value -3440
scoreboard players set ::in p 4
execute store result score ::test value run function math:roundf

# Sign
scoreboard players set ::in value -400
execute store result score ::test value run function math:sign

# Sin
scoreboard players set ::in angle 157
execute store result score ::test value run function math:sin

# Sin2
scoreboard players set ::in angle 111
execute store result score ::test value run function math:sin2

# Sin2f
scoreboard players set ::in angle 4555
scoreboard players set ::in p 3
execute store result score ::test value run function math:sin2f

# Sindeg
scoreboard players set ::in angle 27000
execute store result score ::test value run function math:sindeg

# Sindegf
scoreboard players set ::in angle 100
scoreboard players set ::in p 3
execute store result score ::test value run function math:sindegf

# Sinf
scoreboard players set ::in angle -1200
scoreboard players set ::in p 3
execute store result score ::test value run function math:sinf

# Sinh
scoreboard players set ::in angle -100
execute store result score ::test value run function math:sinh

# Sinhf
scoreboard players set ::in angle 10950
scoreboard players set ::in p 3
execute store result score ::test value run function math:sinhf

# Sqrt
scoreboard players set ::in value 16755
execute store result score ::test value run function math:sqrt

# Sqrtf
scoreboard players set ::in value 19360243
scoreboard players set ::in p 4
execute store result score ::test value run function math:sqrtf

# Tan
scoreboard players set ::in angle 1120
execute store result score ::test value run function math:tan

# Tanf
scoreboard players set ::in angle 15722
scoreboard players set ::in p 4
execute store result score ::test value run function math:tanf

# Tanh
scoreboard players set ::in angle -50
execute store result score ::test value run function math:tanh

# Tanhf
scoreboard players set ::in angle -11222
scoreboard players set ::in p 4
execute store result score ::test value run function math:tanhf

# To score
scoreboard players set ::in value 333
execute store result score ::test value run function math:to_score

# To scoref
scoreboard players set ::in value 89840
scoreboard players set ::in p 4
execute store result score ::test value run function math:to_scoref

# To storage double
scoreboard players set ::in value 637
function math:to_storage_double

# To storage doublef
scoreboard players set ::in value 1
scoreboard players set ::in p 3
function math:to_storage_doublef

# To storage float
scoreboard players set ::in value 4734
function math:to_storage_float

# To storage floatf
scoreboard players set ::in value 800
scoreboard players set ::in p 1
function math:to_storage_floatf

#> Bitwise

# Get bit
scoreboard players set ::in value 128
scoreboard players set ::in n 4
execute store result score ::test value run function math:bitwise/get_bit

# Left shift
scoreboard players set ::in value 333
scoreboard players set ::in n 1
execute store result score ::test value run function math:bitwise/left_shift

# Map
scoreboard players set ::in value 11342
function math:bitwise/map

# Right shift
scoreboard players set ::in value -333
scoreboard players set ::in n 4
execute store result score ::test value run function math:bitwise/right_shift

# Signed right shift
scoreboard players set ::in value 103703
scoreboard players set ::in n 1
execute store result score ::test value run function math:bitwise/signed_right_shift

# Unary not
scoreboard players set ::in value 256
execute store result score ::test value run function math:bitwise/unary_not

#> Floating point

# Abs
data modify storage io: value set value {number: -283381, p: -2}
function math:floating_point/abs

# Add
data modify storage io: value0 set value {number: 5, p: -3}
data modify storage io: value1 set value {number: 159, p: -4}
function math:floating_point/add

# Ceil
data modify storage io: value set value {number: 456600000, p: -8}
function math:floating_point/ceil

# Div
data modify storage io: value0 set value {number: -5983, p: -3}
data modify storage io: value1 set value {number: 2147000000, p: -3}
function math:floating_point/div

# Floor
data modify storage io: value set value {number: -456600000, p: -9}
function math:floating_point/floor

# From fixed point
scoreboard players set ::in value 100
scoreboard players set ::in p 2
function math:floating_point/from_fixed_point

# From score
scoreboard players set ::in value 19201
function math:floating_point/from_score

# From storage
data modify storage io: value set value 762072.11f
function math:floating_point/from_storage

# Get fractional part
data modify storage io: value set value {number: -4200, p: 2}
function math:floating_point/get_fractional_part

# Get integer part
data modify storage io: value set value {number: 570153, p: 3}
function math:floating_point/get_integer_part

# Has fractional part
data modify storage io: value set value {number: 4844, p: 2}
execute store result score ::test value run function math:floating_point/has_fractional_part

# Inv
data modify storage io: value set value {number: 16789, p: -2}
function math:floating_point/inv

# Mul
data modify storage io: value0 set value {number: 5633, p: -2}
data modify storage io: value1 set value {number: 1123, p: -2}
function math:floating_point/mul

# Mul2
data modify storage io: value0 set value {number: 5633, p: -2}
data modify storage io: value1 set value {number: 1123, p: -2}
function math:floating_point/mul2

# Negate
data modify storage io: value set value {number: 13, p: 1}
function math:floating_point/negate

# Round
data modify storage io: value set value {number: 15, p: -1}
function math:floating_point/round

# Sqrt
data modify storage io: value set value {number: 200, p: 0}
function math:floating_point/sqrt

# Sub
data modify storage io: value set value {number: 344334, p: 4}
data modify storage io: value set value {number: 2323, p: 2}
function math:floating_point/sub

# To fixed point
scoreboard players set ::in p 2
data modify storage io: value set value {number: 44785, p: -3}
execute store result score ::test value run function math:floating_point/to_fixed_point

# To score
data modify storage io: value set value {number: 83912338, p: -1}
execute store result score ::test value run function math:floating_point/to_score

# To storage double
data modify storage io: value set value {number: 1125247205, p: -4}
function math:floating_point/to_storage_double

# To storage float
data modify storage io: value set value {number: 1035645555, p: 4}
function math:floating_point/to_storage_float

# Trunc
data modify storage io: value set value {number: 434434443, p: 3}
function math:floating_point/trunc

#> Floating point > Compare

# Equal
data modify storage io: value0 set value {number: 3455, p: -3}
data modify storage io: value1 set value {number: 34550, p: -4}
execute store result score ::test value run function math:floating_point/compare/equal

# Greater equal
data modify storage io: value0 set value {number: 17, p: -2}
data modify storage io: value1 set value {number: 171, p: -3}
execute store result score ::test value run function math:floating_point/compare/greater_equal

# Greater
data modify storage io: value0 set value {number: 2644, p: 2}
data modify storage io: value1 set value {number: 15422, p: 1}
execute store result score ::test value run function math:floating_point/compare/greater

# Less equal
data modify storage io: value0 set value {number: -4550, p: -4}
data modify storage io: value1 set value {number: -14530, p: -4}
execute store result score ::test value run function math:floating_point/compare/less_equal

# Less
data modify storage io: value0 set value {number: -2045, p: -2}
data modify storage io: value1 set value {number: -1900, p: -3}
execute store result score ::test value run function math:floating_point/compare/less
