import SolverAlph
import Data.Char

data Comba a = Vals a | Undefined deriving (Eq)
type Combaa a = [Comba a]

--Initial combination s1
s1 :: Combaa Int
s1 = [Vals 5,Vals 3,Undefined,Undefined,Vals 7,Undefined,Undefined,Undefined,Undefined,Vals 6,Undefined,Undefined,Vals 1,Vals 9,Vals 5,Undefined,Undefined,Undefined,Undefined,Vals 9,Vals 8,Undefined,Undefined,Undefined,Undefined,Vals 6,Undefined,Vals 8,Undefined,Undefined,Undefined,Vals 6,Undefined,Undefined,Undefined,Vals 3,Vals 4,Undefined,Undefined,Vals 8,Undefined,Vals 3,Undefined,Undefined,Vals 1,Vals 7,Undefined,Undefined,Undefined,Vals 2,Undefined,Undefined,Undefined,Vals 6,Undefined,Vals 6,Undefined,Undefined,Undefined,Undefined,Vals 2,Vals 8,Undefined,Undefined,Undefined,Undefined,Vals 4,Vals 1,Vals 9,Undefined,Undefined,Vals 5,Undefined,Undefined,Undefined,Undefined,Vals 8,Undefined,Undefined,Vals 7,Vals 9]
--Initial combination s2
s2 :: Combaa Int
s2 = [Undefined,Undefined,Vals 4,Vals 6,Undefined,Undefined,Undefined,Undefined,Vals 1,Undefined,Vals 5,Undefined,Undefined,Vals 2,Undefined,Undefined,Vals 9,Undefined,Vals 7,Undefined,Undefined,Undefined,Undefined,Vals 4,Vals 2,Undefined,Undefined,Vals 6,Undefined,Undefined,Undefined,Undefined,Vals 7,Vals 4,Undefined,Undefined,Undefined,Vals 4,Undefined,Undefined,Vals 1,Undefined,Undefined,Vals 8,Undefined,Undefined,Undefined,Vals 1,Vals 4,Undefined,Undefined,Undefined,Undefined,Vals 7,Undefined,Undefined,Vals 5,Vals 8,Undefined,Undefined,Undefined,Undefined,Vals 6,Undefined,Vals 8,Undefined,Undefined,Vals 6,Undefined,Undefined,Vals 2,Undefined,Vals 3,Undefined,Undefined,Undefined,Undefined,Vals 5,Vals 9,Undefined,Undefined]
--Initial combination s3 The world`s hardest sudoku
s3 :: Combaa Int
s3 = [Vals 8,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 3,Vals 6,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 7,Undefined,Undefined,Vals 9,Undefined,Vals 2,Undefined,Undefined,Undefined,Vals 5,Undefined,Undefined,Undefined,Vals 7,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 4,Vals 5,Vals 7,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 1,Undefined,Undefined,Undefined,Vals 3,Undefined,Undefined,Undefined,Vals 1,Undefined,Undefined,Undefined,Undefined,Vals 6,Vals 8,Undefined,Undefined,Vals 8,Vals 5,Undefined,Undefined,Undefined,Vals 1,Undefined,Undefined,Vals 9,Undefined,Undefined,Undefined,Undefined,Vals 4,Undefined,Undefined]
--Initial combination s4
s4 :: Combaa Int
s4 = [Undefined,Undefined,Vals 4,Undefined,Undefined,Vals 5,Vals 7,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 8,Vals 4,Undefined,Undefined,Vals 3,Vals 6, Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 8,Vals 7,Vals 2,Undefined,Undefined,Vals 6,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 4,Undefined,Vals 2,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 8,Undefined,Undefined,Vals 9,Vals 3,Vals 4,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 5,Vals 6,Undefined,Undefined,Vals 5,Vals 3,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 6,Vals 1,Undefined,Undefined,Vals 9,Undefined,Undefined]
--Evil
s5 :: Combaa Int
s5 = [Undefined,Undefined,Vals 9,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 3,Vals 8,Vals 4,Undefined,Undefined,Undefined,Vals 5,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 4,Undefined,Vals 3,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 1,Undefined,Undefined,Vals 2,Vals 7,Undefined,Vals 2,Undefined,Undefined,Vals 3,Undefined,Vals 4,Undefined,Undefined,Vals 5,Undefined,Vals 4,Vals 8,Undefined,Undefined,Vals 6,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 6,Undefined,Vals 1,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 7,Undefined,Undefined,Undefined,Vals 6,Vals 2,Vals 9,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 5,Undefined,Undefined,Undefined]
--Hard
s6 :: Combaa Int
s6 = [Vals 9,Undefined,Vals 3,Undefined,Undefined,Vals 4,Vals 2,Undefined,Undefined,Vals 4,Undefined,Vals 6,Vals 5,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 2,Vals 8,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 5,Undefined,Undefined,Vals 4,Undefined,Vals 6,Vals 7,Undefined,Vals 4,Undefined,Vals 9,Vals 2,Undefined,Vals 1,Undefined,Undefined,Vals 9,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 8,Vals 7,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Vals 9,Vals 4,Undefined,Vals 3,Undefined,Undefined,Vals 8,Vals 3,Undefined,Undefined,Vals 6,Undefined,Vals 1]
--Medium
--s7 :: Combination Int
--s7 = [Undefined,Undefined,Undefined,Val 4,Undefined,Val 6,Undefined,Val 9,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 3,Undefined,Undefined,Val 5,Val 4,Val 5,Undefined,Undefined,Undefined,Undefined,Undefined,Val 8,Val 6,Val 6,Undefined,Val 2,Undefined,Val 7,Val 4,Undefined,Undefined,Val 1,Undefined,Undefined,Undefined,Undefined,Val 9,Undefined,Undefined,Undefined,Undefined,Val 9,Undefined,Undefined,Val 5,Val 6,Undefined,Val 7,Undefined,Val 8,Val 7,Val 1,Undefined,Undefined,Undefined,Undefined,Undefined,Val 6,Val 4,Val 3,Undefined,Undefined,Val 6,Undefined,Undefined,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Val 9,Undefined,Val 2,Undefined,Undefined,Undefined]
--Easy
--s8 :: Combination Int
--s8 = [Undefined,Undefined,Undefined,Undefined,Val 3,Val 4,Val 5,Undefined,Undefined,Undefined,Undefined,Val 8,Val 9,Undefined,Undefined,Undefined,Val 3,Undefined,Val 3,Undefined,Undefined,Undefined,Undefined,Val 2,Val 7,Val 8,Val 9,Val 2,Undefined,Val 4,Undefined,Undefined,Val 6,Val 8,Val 1,Val 5,Undefined,Undefined,Undefined,Undefined,Val 4,Undefined,Undefined,Undefined,Undefined,Val 8,Val 7,Val 6,Val 5,Undefined,Undefined,Val 4,Undefined,Val 2,Val 7,Val 5,Val 2,Val 3,Undefined,Undefined,Undefined,Undefined,Val 6,Undefined,Val 1,Undefined,Undefined,Undefined,Val 7,Val 9,Undefined,Undefined,Undefined,Undefined,Val 9,Val 4,Val 2,Undefined,Undefined,Undefined,Undefined]

-- Aplhabet replacing function
replace :: Replace Int
replace comb index value | indexrow `elem` [0,3,6] = getColumns (take ((indexrow)*9) comb) indexinrow1 (length (take ((indexrow)*9) comb)) value ++ simplify (take indexinrow1 (drop ((indexrow)*9) comb)) value ++ [Val value] ++ simplify (take (8-indexinrow1) (drop ((indexrow)*9 + indexinrow1 +1) comb)) value ++ take (indexinrow) ((drop ((indexrow+1)*9)) comb) ++ simplify (take 3 (drop ((indexrow+1)*9+indexinrow) comb)) value ++ take 6 (drop ((indexrow+1)*9+indexinrow+3) comb) ++ simplify (take 3 (drop (indexinrow + (indexrow+2)*9) comb)) value ++ take (9-(indexinrow+3)) (drop (indexinrow + (indexrow+2)*9 +3) comb)++ getColumns (drop (indexinrow + (indexrow+2)*9 +3+9-(indexinrow+3)) comb) indexinrow1 (length (drop (indexinrow + (indexrow+2)*9 +3+9-(indexinrow+3)) comb)) value
                         | indexrow `elem` [1,4,7] = getColumns (take ((indexrow-1)*9) comb) indexinrow1 (length (take ((indexrow-1)*9) comb)) value ++ take (indexinrow) (drop ((indexrow-1)*9) comb) ++ simplify (take 3 (drop ((indexrow-1)*9+indexinrow) comb)) value ++ take (9-(indexinrow+3)) (drop ((indexrow-1)*9+indexinrow+3) comb) ++ simplify (take indexinrow1 (drop ((indexrow)*9) comb)) value ++ [Val value] ++ simplify (take (8-indexinrow1) (drop ((indexrow)*9 + indexinrow1 +1) comb)) value ++ take (indexinrow) (drop ((indexrow+1)*9) comb) ++ simplify (take 3 (drop ((indexrow+1)*9+indexinrow) comb)) value  ++ take (9-(indexinrow+3)) (drop ((indexrow+1)*9+indexinrow+3) comb) ++ getColumns (drop ((indexrow+2)*9) comb) indexinrow1 (length (drop ((indexrow+2)*9) comb)) value
                         | otherwise = getColumns (take ((indexrow-2)*9) comb) indexinrow1 (length (take ((indexrow-2)*9) comb)) value ++ take (indexinrow) (drop ((indexrow-2)*9) comb) ++ simplify (take 3 (drop ((indexrow-2)*9+indexinrow) comb)) value ++ take (6) (drop ((indexrow-2)*9+indexinrow+3) comb)++ simplify (take 3 (drop ((indexrow-1)*9+indexinrow) comb)) value  ++  take (9-(indexinrow+3)) (drop ((indexrow-1)*9+indexinrow+3) comb)  ++ simplify (take indexinrow1 (drop ((indexrow)*9) comb)) value ++ [Val value] ++ simplify (take (8-indexinrow1) (drop ((indexrow)*9 + indexinrow1 +1) comb)) value ++ getColumns (drop ((indexrow+1)*9) comb) indexinrow1 (length (drop ((indexrow+1)*9) comb)) value
                              where indexrow = index `div` 9
                                    indexinrow = ((index `div` 3*3) `mod` 9)
                                    indexinrow1 = (index `mod` 9)
                                    indexdrop = index `div` 3*3

-- get 3 replaced columns 
getColumns :: Combination Int -> Int -> Int-> Int -> Combination Int
getColumns comb indexinrow 0 value = []
getColumns comb indexinrow row value= (take indexinrow comba ++ simplify ([comba !! indexinrow]) value ++ drop (indexinrow+1) comba)++getColumns (drop 9 comb) indexinrow (row-9) value
                  where comba = take 9 comb

initialReplace :: Combaa Int -> Combination Int
initialReplace [] = []
initialReplace ((Vals s):as) = Val s:initialReplace as
initialReplace ((Undefined):as) = Alph [1..9]:initialReplace as

inits :: Combination Int -> Int-> Combination Int
inits comb 81 = comb
inits comb ind | needtoRepl current = inits (replace comb ind (getVal current)) (ind+1)
               | otherwise = inits (comb) (ind+1)
                    where current = comb !! ind
                          needtoRepl (Val q) = True
                          needtoRepl a = False
                          getVal (Val q) = q

initialiseCombination :: Combaa Int -> Combination Int
initialiseCombination comb = inits (initialReplace comb) 0