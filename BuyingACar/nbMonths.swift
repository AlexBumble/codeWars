func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
    
    guard startPriceNew > startPriceOld else {return (0, startPriceOld - startPriceNew)}
    
    var currentPercent = percentLossByMonth
    var curentPriceOld = Double(startPriceOld) - Double(startPriceOld) * currentPercent / 100
    var currentPriceNew = Double(startPriceNew) - Double(startPriceNew) * currentPercent / 100
    var currentSaving = Double(savingPerMonth)
    var month = 1
    
    while currentPriceNew > (curentPriceOld + currentSaving) {
        month += 1
        if month % 2 == 0 {
            currentPercent += 0.5
        }
        curentPriceOld = Double(curentPriceOld) - Double(curentPriceOld) * currentPercent / 100
        currentPriceNew = Double(currentPriceNew) - Double(currentPriceNew) * currentPercent / 100
        currentSaving += Double(savingPerMonth)
    }
        return (month, Int(round((curentPriceOld + currentSaving) - currentPriceNew)))
}
