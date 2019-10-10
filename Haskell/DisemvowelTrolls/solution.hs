module Disemvowel where

    disemvowel :: String -> String
    disemvowel str = [newStr | newStr <- str, notElem newStr "aeiouAEIOU"]