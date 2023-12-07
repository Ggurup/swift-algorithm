func solution(_ s:String) -> Bool
{
    var ans:Bool = false

    var openCnt: Int = 0, closeCnt: Int = 0

    for ch in s {
        switch ch {
        case "(":
            openCnt += 1
        case ")":
            closeCnt += 1
        default:
            break
        }

        guard openCnt >= closeCnt else {
            break
        }
    }

    ans = openCnt == closeCnt

    return ans
}

