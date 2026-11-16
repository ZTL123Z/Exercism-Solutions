BEGIN {
    FS=","
    # 名称 -> bit
    arr["eggs"]=1
    arr["peanuts"]=2
    arr["shellfish"]=4
    arr["strawberries"]=8
    arr["tomatoes"]=16
    arr["chocolate"]=32
    arr["pollen"]=64
    arr["cats"]=128

    # 固定遍历顺序
    order[1] = "eggs"
    order[2] = "peanuts"
    order[3] = "shellfish"
    order[4] = "strawberries"
    order[5] = "tomatoes"
    order[6] = "chocolate"
    order[7] = "pollen"
    order[8] = "cats"
}
{
    score = $1 + 0
    cmd   = $2

    if (cmd == "list") {
        out = ""
        for (i=1; i<=8; i++) {
            name = order[i]
            bit  = arr[name]
            if (and(score, bit)) {
                if (out != "") out = out ","
                out = out name
            }
        }
        print out
    } else {
        # allergic 判断分支
        item = $3
        bit = arr[item]
        if (bit == 0) {
            print "false"
        } else {
            if (and(score, bit) != 0)
                print "true"
            else
                print "false"
        }
    }
}
