ll = [1 .. 999] :: [Int]

mult3and5 :: [Int] -> [Int]
mult3and5 [] = []
mult3and5 (x : xs) = if x `mod` 3 == 0 || x `mod` 5 == 0 then x : mult3and5 xs else mult3and5 xs

main :: IO ()
main = print $ sum $ mult3and5 ll

-- let a = mult3and5 ll
