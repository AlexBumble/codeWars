-- My solution

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci _ 0         = []
tribonacci (a, b, c) n = take n ([a,b,c] ++ bonacci [a,b,c])

bonacci :: Num a => [a] -> [a]
bonacci [a,b,c] = [(a+b+c)] ++ bonacci [b,c,(a+b+c)]


-- Best solution

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci _ n | n < 1 = []
tribonacci (a, b, c) n = a : tribonacci (b, c, a+b+c) (n-1)
