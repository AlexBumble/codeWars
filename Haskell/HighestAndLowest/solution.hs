module Kata (highAndLow) where

highAndLow :: String -> String
highAndLow input = show (maximum arr) ++ " " ++ show (minimum arr)
  where arr :: [Int]
        arr = map read $ words input

highAndLow2 :: String -> String
highAndLow2 input =
  let arr :: [Int]
      arr = map read $ words input
  in show (maximum arr) ++ " " ++ show (minimum arr)
