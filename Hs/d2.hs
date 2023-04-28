fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)

-- createList :: Int -> [Int]
-- createList topMax
-- \| 4 000 000 > topMax = x:xs
--
fib_list = takeWhile (<= 4000000) [fib (x) | x <- [1 ..]]

filter_even :: Int -> Int
filter_even x
  | even x = x
  | otherwise = 0

fib_evens = map filter_even fib_list

main :: IO ()
main = print $ sum $ fib_evens
