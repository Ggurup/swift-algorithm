import Foundation

func solution(_ s:String) -> Bool
{
    var stack: [Character] = []
    
    if s.first == ")" {
        return false
    }
    
    for str in s {
        if str == "(" {
            stack.append(str)
        } else {
            if stack.last == "(" {
                let _ = stack.popLast()
            } else {
                return false    
            }
        }
    }

    return stack.isEmpty
}