BEGIN {
    name = "you"
}
{
    if ($0 != "")
        name = $0
}
END {
    printf "One for %s, one for me.\n", name
}
