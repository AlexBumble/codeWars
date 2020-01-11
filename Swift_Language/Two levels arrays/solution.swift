import Foundation

func flattenTwoLevels(_ arr:[Any]) -> [Any] {
    var res = [Any]()
    for value in arr {
        if let twoLvl = value as? [Any] {
            res.append(flattenOneLevel(twoLvl))
        } else {
            res.append(value)
        }
    }
    return res
}

func flattenOneLevel(_ arr:[Any]) -> [Any] {
    var res = [Any]()
    for value in arr {
        if let twoLvl = value as? [Any] {
            res += flattenOneLevel(twoLvl)
        } else {
            res.append(value)
        }
    }
    return res
}
