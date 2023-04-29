genList :: Int -> Int
genList k = sum [1 .. k] :: Int

-- gL :: Int -> Int -> Int
triangle :: [Int]
triangle = tri 1 1
  where
    tri n acc = acc : tri (n + 1) (n + 1 + acc)

findDivisors :: Int -> Int
findDivisors n = (2 *) $ length [x | x <- [2 .. round $ sqrt $ fromIntegral n], n `mod` x == 0]

results_list = last $ takeWhile (\x -> findDivisors x <= 501) triangle
