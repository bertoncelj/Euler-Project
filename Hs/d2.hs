fibA :: Int -> [Int]
fibA maxVal = fibAcc 0 1
  where
    fibAcc a b
      | a > maxVal = []
      | otherwise = a : fibAcc b (a + b)

main :: IO ()
main = print $ sum $ filter (even) (fibA 4000000)
