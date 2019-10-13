songDecoder :: String -> String
songDecoder str =
  let newSrt = foldr1 (++) (filter (/= "WUB") [x | x <-decode str])
  in unwords (words newSrt)

decode :: String -> [String]
decode x
            | length x == 0 = [""]
            | length x < 4 = [x]
            | otherwise = if take 3 x == "WUB"
              then (take 3 x):(" "):(decode (drop 3 x))
              else [(head x)]:decode(tail x)
