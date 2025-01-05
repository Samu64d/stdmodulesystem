#
# math:is_nan/is
#

$execute store success score ::math success unless score $(value_ref) matches -2147483648..2147483647
