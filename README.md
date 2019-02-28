# Sudoku solver

## This is 3 versions of the combinatorical problem solver. 

## Version 1

This solver solves combinatorical problems using backtracking search with fail early concept.

Solver accepts Problem in form of tuple (alphabet, checkers, initial combination)

Details of operation.
1. Solver tries to put every symbol from alphabet to undefined position in initial combination
2. Run checkers
3. * if checkers return false (fail early) - backtrack
   * if checkers return true - go to step 1

To run the solver for problem p:
``` haskell
solve p
```

To genereate Latin square problem nxn:
``` haskell
latin n
````

To generate Queens problem nxn:
``` haskell
queens n
````

There are several sudoku problem examples in sudoku.hs

## Version 2