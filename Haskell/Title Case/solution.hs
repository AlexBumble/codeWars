import Data.Char

titleCase :: String -> String -> String
titleCase _ ""        = ""
titleCase m str  =
  let lowerStr   = (words (map toLower str))
      lowerM     = map toLower m
      headOfStr  = [upHead (head lowerStr)]
      tailOfStr  = [if x `elem` words lowerM  then x else upHead x | x <- (tail lowerStr)]
  in unwords (headOfStr ++ tailOfStr)

upHead :: String -> String
upHead x = (toUpper $ head x):(tail x)
