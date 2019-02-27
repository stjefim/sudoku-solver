import Solverv2

queens :: Int -> Problem Int
queens n = ([0,1],[col n,row n,diag1 n,diag2 n,amount n],replicate (n*n) Undefined)


col :: Int -> Checker Int
col dim combination n value = if (value == Val 0) then True else check0 combination value (n+dim) && check1 combination value (n-dim)
    where check0 combination value index | index > dim*dim-1 = True
                                         | otherwise = (value /= (combination !! index)) && check0 combination value (index+dim)
          check1 combination value index | index < 0 = True
                                         | otherwise = (value /= (combination !! index)) && check1 combination value (index-dim)

row :: Int -> Checker Int
row dim combination n value = if (value == Val 0) then True else length ([True | a <- selectedRow, a == value]) == 0
    where rowindex = n `div` dim
          selectedRow = take dim (drop (rowindex*dim) combination)


diag1 :: Int -> Checker Int
diag1 dim combination n value = if (value == Val 0) then True else check0 combination value (n+dim+1) && check1 combination value (n-dim-1)
    where check0 combination value index | index > dim*dim-1 = True
                                         | otherwise = (value /= (combination !! index)) && check0 combination value (index+dim+1)
          check1 combination value index | index < 0 = True
                                         | otherwise = (value /= (combination !! index)) && check1 combination value (index-dim-1) 
                                         
diag2 :: Int -> Checker Int
diag2 dim combination n value = if (value == Val 0) then True else check0 combination value (n+dim-1) && check1 combination value (n-dim+1)
    where check0 combination value index | index > dim*dim-1 = True
                                         | otherwise = (value /= (combination !! index)) && check0 combination value (index+dim-1)
          check1 combination value index | index < 0 = True
                                         | otherwise = (value /= (combination !! index)) && check1 combination value (index-dim+1)

amount :: Int -> Checker Int
amount dim combination n value = if (n `mod` dim /= dim - 1) then True else length [True |x <- take dim (drop start combination), x == (Val 1)] == 1
    where start = ((n `div` dim)*dim)