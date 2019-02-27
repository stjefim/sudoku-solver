import Solverv3
import Data.Char

--Problem of sudoku for initial combination s1
sudoku1 :: Problem Int
sudoku1 = ([1,2,3,4,5,6,7,8,9],[col,row,square],s1)
--Problem of sudoku for initial combination s2
sudoku2 :: Problem Int
sudoku2 = ([1,2,3,4,5,6,7,8,9],[col,row,square],s2)
--Problem of sudoke for initial combination s3
sudoku3 :: Problem Int
sudoku3 = ([1,2,3,4,5,6,7,8,9],[col,row,square],s3)
--Problem of sudoke for initial combination s4
sudoku4 :: Problem Int
sudoku4 = ([1,2,3,4,5,6,7,8,9],[col,row,square],s4)
easy :: Problem Int
easy = ([1,2,3,4,5,6,7,8,9],[col,row,square],s8)
medium :: Problem Int
medium = ([1,2,3,4,5,6,7,8,9],[col,row,square],s7)
hard :: Problem Int
hard = ([1,2,3,4,5,6,7,8,9],[col,row,square],s6)
evil :: Problem Int
evil = ([1,2,3,4,5,6,7,8,9],[col,row,square],s5)

--Initial combination s1
s1 :: Combination Int
s1 = [Val 5,Val 3,Undefined,Undefined,Val 7,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Undefined,Val 1,Val 9,Val 5,Undefined,Undefined,Undefined,Undefined,Val 9,Val 8,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Val 8,Undefined,Undefined,Undefined,Val 6,Undefined,Undefined,Undefined,Val 3,Val 4,Undefined,Undefined,Val 8,Undefined,Val 3,Undefined,Undefined,Val 1,Val 7,Undefined,Undefined,Undefined,Val 2,Undefined,Undefined,Undefined,Val 6,Undefined,Val 6,Undefined,Undefined,Undefined,Undefined,Val 2,Val 8,Undefined,Undefined,Undefined,Undefined,Val 4,Val 1,Val 9,Undefined,Undefined,Val 5,Undefined,Undefined,Undefined,Undefined,Val 8,Undefined,Undefined,Val 7,Val 9]
--Initial combination s2
s2 :: Combination Int
s2 = [Undefined,Undefined,Val 4,Val 6,Undefined,Undefined,Undefined,Undefined,Val 1,Undefined,Val 5,Undefined,Undefined,Val 2,Undefined,Undefined,Val 9,Undefined,Val 7,Undefined,Undefined,Undefined,Undefined,Val 4,Val 2,Undefined,Undefined,Val 6,Undefined,Undefined,Undefined,Undefined,Val 7,Val 4,Undefined,Undefined,Undefined,Val 4,Undefined,Undefined,Val 1,Undefined,Undefined,Val 8,Undefined,Undefined,Undefined,Val 1,Val 4,Undefined,Undefined,Undefined,Undefined,Val 7,Undefined,Undefined,Val 5,Val 8,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Val 8,Undefined,Undefined,Val 6,Undefined,Undefined,Val 2,Undefined,Val 3,Undefined,Undefined,Undefined,Undefined,Val 5,Val 9,Undefined,Undefined]
--Initial combination s3
s3 :: Combination Int
s3 = [Val 8,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 3,Val 6,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 7,Undefined,Undefined,Val 9,Undefined,Val 2,Undefined,Undefined,Undefined,Val 5,Undefined,Undefined,Undefined,Val 7,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 4,Val 5,Val 7,Undefined,Undefined,Undefined,Undefined,Undefined,Val 1,Undefined,Undefined,Undefined,Val 3,Undefined,Undefined,Undefined,Val 1,Undefined,Undefined,Undefined,Undefined,Val 6,Val 8,Undefined,Undefined,Val 8,Val 5,Undefined,Undefined,Undefined,Val 1,Undefined,Undefined,Val 9,Undefined,Undefined,Undefined,Undefined,Val 4,Undefined,Undefined]
--Initial combination s4
s4 :: Combination Int
s4 = [Undefined,Undefined,Val 4,Undefined,Undefined,Val 5,Val 7,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 8,Val 4,Undefined,Undefined,Val 3,Val 6, Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 8,Val 7,Val 2,Undefined,Undefined,Val 6,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 4,Undefined,Val 2,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 8,Undefined,Undefined,Val 9,Val 3,Val 4,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 5,Val 6,Undefined,Undefined,Val 5,Val 3,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 6,Val 1,Undefined,Undefined,Val 9,Undefined,Undefined]
--Evil
s5 :: Combination Int
s5 = [Undefined,Undefined,Val 9,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 3,Val 8,Val 4,Undefined,Undefined,Undefined,Val 5,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 4,Undefined,Val 3,Undefined,Undefined,Undefined,Undefined,Undefined,Val 1,Undefined,Undefined,Val 2,Val 7,Undefined,Val 2,Undefined,Undefined,Val 3,Undefined,Val 4,Undefined,Undefined,Val 5,Undefined,Val 4,Val 8,Undefined,Undefined,Val 6,Undefined,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Val 1,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 7,Undefined,Undefined,Undefined,Val 6,Val 2,Val 9,Undefined,Undefined,Undefined,Undefined,Undefined,Val 5,Undefined,Undefined,Undefined]
--Hard
s6 :: Combination Int
s6 = [Val 9,Undefined,Val 3,Undefined,Undefined,Val 4,Val 2,Undefined,Undefined,Val 4,Undefined,Val 6,Val 5,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 2,Val 8,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 5,Undefined,Undefined,Val 4,Undefined,Val 6,Val 7,Undefined,Val 4,Undefined,Val 9,Val 2,Undefined,Val 1,Undefined,Undefined,Val 9,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 8,Val 7,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 9,Val 4,Undefined,Val 3,Undefined,Undefined,Val 8,Val 3,Undefined,Undefined,Val 6,Undefined,Val 1]
--Medium
s7 :: Combination Int
s7 = [Undefined,Undefined,Undefined,Val 4,Undefined,Val 6,Undefined,Val 9,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 3,Undefined,Undefined,Val 5,Val 4,Val 5,Undefined,Undefined,Undefined,Undefined,Undefined,Val 8,Val 6,Val 6,Undefined,Val 2,Undefined,Val 7,Val 4,Undefined,Undefined,Val 1,Undefined,Undefined,Undefined,Undefined,Val 9,Undefined,Undefined,Undefined,Undefined,Val 9,Undefined,Undefined,Val 5,Val 6,Undefined,Val 7,Undefined,Val 8,Val 7,Val 1,Undefined,Undefined,Undefined,Undefined,Undefined,Val 6,Val 4,Val 3,Undefined,Undefined,Val 6,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Val 9,Undefined,Val 2,Undefined,Undefined,Undefined]
--Easy
s8 :: Combination Int
s8 = [Undefined,Undefined,Undefined,Undefined,Val 3,Val 4,Val 5,Undefined,Undefined,Undefined,Undefined,Val 8,Val 9,Undefined,Undefined,Undefined,Val 3,Undefined,Val 3,Undefined,Undefined,Undefined,Undefined,Val 2,Val 7,Val 8,Val 9,Val 2,Undefined,Val 4,Undefined,Undefined,Val 6,Val 8,Val 1,Val 5,Undefined,Undefined,Undefined,Undefined,Val 4,Undefined,Undefined,Undefined,Undefined,Val 8,Val 7,Val 6,Val 5,Undefined,Undefined,Val 4,Undefined,Val 2,Val 7,Val 5,Val 2,Val 3,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Val 1,Undefined,Undefined,Undefined,Val 7,Val 9,Undefined,Undefined,Undefined,Undefined,Val 9,Val 4,Val 2,Undefined,Undefined,Undefined,Undefined]

--Checkers for row, column, and squares 3x3
col :: Checker Int
col combination n value = check0 combination value (n+9) && check1 combination value (n-9)
    where check0 combination value index | index > 80 = True
                                         | otherwise = (value /= (combination !! index)) && check0 combination value (index+9)
          check1 combination value index | index < 0 = True
                                         | otherwise = (value /= (combination !! index)) && check1 combination value (index-9)

row :: Checker Int
row combination n value = length ([True | a <- selectedRow, a == value]) == 0
    where rowindex = n `div` 9
          selectedRow = take 9 (drop (rowindex*9) combination)
       
square :: Checker Int
square combination n value = length ([True | a <- (getSq n combination), a == value]) == 0
    where getSq ind0 comb | (ind0 `div` 9) `elem` [0,3,6] = (take 3 (drop (ind0 `div` 3*3 ) comb) ++ take 3 (drop (ind0 `div` 3*3 +9) comb) ++ take 3 (drop (ind0 `div` 3*3 +18) comb))
                          | (ind0 `div` 9) `elem` [1,4,7] = (take 3 (drop (ind0 `div` 3*3 -9) comb) ++ take 3 (drop (ind0 `div` 3*3) comb) ++ take 3 (drop (ind0 `div` 3*3 +9) comb)) 
                          | otherwise = (take 3 (drop (ind0 `div` 3*3 -18) comb) ++ take 3 (drop (ind0 `div` 3*3 -9) comb) ++ take 3 (drop (ind0 `div` 3*3) comb))
