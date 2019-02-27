import Solverv2

latin :: Int -> Problem Int
latin n = ([1..n],[col n,row n],replicate (n*n) Undefined)


col :: Int -> Checker Int
col dim combination n value = check0 combination value (n+dim) && check1 combination value (n-dim)
    where check0 combination value index | index > dim*dim-1 = True
                                         | otherwise = (value /= (combination !! index)) && check0 combination value (index+dim)
          check1 combination value index | index < 0 = True
                                         | otherwise = (value /= (combination !! index)) && check1 combination value (index-dim)

row :: Int -> Checker Int
row dim combination n value = length ([True | a <- selectedRow, a == value]) == 0
    where rowindex = n `div` dim
          selectedRow = take dim (drop (rowindex*dim) combination)