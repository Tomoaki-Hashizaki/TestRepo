main = print (checkSeq 37038733764462037052)

digitToBinary   :: Integer -> [Integer]
digitToBinary 0 =  []
digitToBinary n =  n `mod` 2 : digitToBinary (n `div` 2)

splitAtOne :: [Integer] -> [Int]
splitAtOne [] = []
splitAtOne xs = (length $ takeWhile (< 1) xs) : (splitAtOne $ tail $ dropWhile (< 1) xs)

checkSeq :: Integer -> [Int]
checkSeq = reverse . splitAtOne . digitToBinary
