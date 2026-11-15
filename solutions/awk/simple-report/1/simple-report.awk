BEGIN {
    FS = ","
}
{
    num1 = $3 $4
    num2 = $5 $6
    num3 = num1 + num2
    print "#"$1",",$2, "= " num3 / 2
}
