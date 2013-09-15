main = print (checkSeq 37038733764462037052)

digitToBinary   :: Integer -> [Integer]
digitToBinary 0 =  []
digitToBinary n =  n `mod` 2 : digitToBinary (n `div` 2)

countZeros :: [Integer] -> [Int]
countZeros [] = []
countZeros xs = (length $ takeWhile (< 1) xs) : (countZeros $ tail $ dropWhile (< 1) xs)

checkSeq :: Integer -> [Int]
checkSeq = reverse . countZeros . digitToBinary
