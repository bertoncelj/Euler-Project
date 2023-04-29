import Data.List (elemIndices)

findMaxIndices :: [Int] -> [Int]
findMaxIndices xs = case xs of
  [] -> []
  _ -> elemIndices (maximum xs) xs

collatz :: Int -> Int
collatz x
  | even x = x `div` 2
  | otherwise = 3 * x + 1

goin n
  | n == 1 = [1]
  | otherwise = n : goin (collatz n)

result = findMaxIndices $ map (length . goin) [1 .. 1000000]

main :: IO ()
main = print result
