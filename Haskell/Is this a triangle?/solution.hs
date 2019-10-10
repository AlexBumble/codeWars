module Codewars.Triangles where

    import Data.List (sort)
    
    isTriangle :: Int -> Int -> Int -> Bool
    isTriangle a b c = if (a > 0 && b > 0 && c > 0) && 
        (a + b > c && a + c > b && b + c > a) then True else False