module SolverAlph (Comb(..),Replace,Combination,Problem,solve,simplify) where 

data Comb a = Val a | Alph [a] deriving(Eq) -- New data type to represent not only values of alphabet but also undefined values in combination
type Replace a = Combination a -> Int -> a -> Combination a -- Replaces the aplhabet using specific implementation needed because of the different logic of what we need to replace
type Combination a = [Comb a] --Combination - linear array of values. Bigger dimensions can always be transformed to linear.
type Problem a = (Replace a, Combination a) -- Problem consist of alphabet, rules-checkers and initial combination where every unknown value should be replaced by -1.

--Description:
--Problem solver - return all possible combinations to the problem.
--Arguments: Problem

--Description of implemenation:
--new function "f" to pass one more argument - index of last added number. This is done to find next undefined value faster.
--index equals to index of next undefined value
--if index is -1 => there is no more undefined value - return combination
--else recursively run function putting instead of undefined value each of possibilities out of alphabet and concat output of all recursive calls
--before running recursive call if combination passed is valid(concept of fail early)
--Important - putting value in array take a loooooot of time - first check if combination with this value will be still valid and only then put value in

solve :: Eq a => Problem a -> [Combination a] 
solve (replace, initialcombination) = f (-1) replace initialcombination
    where f lastadded replace combination |index == (-1) = if validComb combination then [combination] else []
                                          |otherwise = concat [f index replace (replace combination index a) | a <- getAplha (combination !! index)]
                where index = nextChange combination 10 0 (-1)
                      getAplha (Alph q) = q
                      getAlpha (Val q) = q
                      alphEmpty (Alph q) = lengthofAl q /=0 

                                
-- determine which aplhabet is the shortest and give its index otherwise if only values are in the combination return -1.Arguments: combination, length of the longest alphabet, indexofcurrently 
-- checked index , index of the shortest combination                                
nextChange :: Eq a => Combination a -> Int -> Int -> Int-> Int
nextChange a 0 indexcurrent indexlow = -1
nextChange [] length indexcurrent indexlow  = indexlow
nextChange ((Alph x):cs) length indexcurrent indexlow   | lengthofAl x < length = nextChange cs (lengthofAl x) (indexcurrent+1) (indexcurrent)
                                                        | otherwise = nextChange cs (lengthofAl x) (indexcurrent+1) (indexlow)
nextChange (a:cs) length indexcurrent indexlow = nextChange cs (length) (indexcurrent+1) (indexlow)

--checks if the comb only has values
validComb :: Eq a => Combination a-> Bool
validComb [] = True
validComb ((Val q):cs) = validComb cs
validComb (c:cs) = False

-- Simplifies the alphabet
simplify :: Eq a => Combination a -> a -> Combination a
simplify [] value = []
simplify ((Alph q):as) value = Alph [x | x <- q, x /= value]:simplify as value
simplify (a:as) value = a:simplify as value

-- To not derive foldable
lengthofAl :: [a] -> Int
lengthofAl [] = 0
lengthofAl (a:as) = 1+lengthofAl as

-- Replace nth element in initialArray by given(to put new values to the combination) Arguments: Index Value initialArray
replaceNth :: Eq a => Int -> a -> Combination a -> Combination a
replaceNth index value combination = (take index combination) ++ [Val value] ++ (drop (index+1) combination)

instance Show a => Show (Comb a) where
    show (Val x) = show x
    show (Alph x) = show x