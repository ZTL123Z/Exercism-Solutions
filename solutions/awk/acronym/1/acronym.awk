{
    gsub(/-/," ",$0)
    gsub(/[^a-zA-Z[:space:]]/,"",$0)
    as = ""
    for(i=1; i<=NF; i++){
        c = substr($i, 1, 1)
        c = toupper(c)
        as = as c
    }
    print as
}
