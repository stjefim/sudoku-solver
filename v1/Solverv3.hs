module Solverv3 (Comb(..),Alphabet,Checker,Checkers,Combination,Problem,solve) where 

data Comb a = Val a | Undefined deriving(Eq) -- New data type to represent not only values of alphabet but also undefined values in combination
type Alphabet a = [a] --Alphabet - all values that can be in combination.
type Checker a = Combination a -> Int -> Comb a -> Bool --Checker get combination, index of last inserted element, value of last inserted element and returns if this value doesnt break rule of combination
type Checkers a = [Checker a] --Array of checkers
type Combination a = [Comb a] --Combination - linear array of values. Bigger dimensions can always be transformed to linear.
type Problem a = (Alphabet a, Checkers a, Combination a) -- Problem consist of alphabet, rules-checkers and initial combination where every unknown value should be replaced by -1.

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
solve (alphabet, checkers, initialcombination) = f (-1) alphabet checkers initialcombination
    where f lastadded alphabet checkers combination |index == -1 = [combination]
                                                    |otherwise = concat [f index alphabet checkers (replaceNth index a combination) | a <- alphabet, (and [c combination index (Val a) | c <- checkers])]
                where index = nextUndefined combination lastadded


-- find next undefined value (-1) in combination after given index. If there is no undefined value - return -1. Arguments: combination, index
nextUndefined :: Eq a => Combination a -> Int -> Int
nextUndefined combination lastadded = (findNext (drop (lastadded+1) combination) (lastadded+1))
        where findNext [] n = -1
              findNext (x:xs) n | x == Undefined = n
                                | otherwise = findNext xs (n+1) 


-- Replace nth element in initialArray by given(to put new values to the combination) Arguments: Index Value initialArray
replaceNth :: Eq a => Int -> a -> Combination a -> Combination a
replaceNth index value combination = (take index combination) ++ [Val value] ++ (drop (index+1) combination)


instance Show a => Show (Comb a) where
    show (Val x) = show x
    show (Undefined) = "-"