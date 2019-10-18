validBraces :: String -> Bool
validBraces [] = True
validBraces ('{':xs) = if '}' `elem` xs then validBraces xs else False
validBraces ('[':xs) = if ']' `elem` xs then validBraces xs else False
validBraces ('(':xs) = if ')' `elem` xs then validBraces xs else False
validBraces (x:xs)   = validBraces xs
