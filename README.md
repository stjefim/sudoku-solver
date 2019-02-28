# Sudoku solver

**This is 2 versions of the combinatorical problem solver.**

## Version 1

This solver finds all solutions for combinatorical problems using backtracking search with fail early concept.

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

This solver finds all solutions for combinatorical problems. It creates alhpabet of possible values for every undefined value - initialises combination. Then solves problem using backtracking search with fail early concept.

Solver accepts Problem in form of tuple (replace, initialised combination)

Details of operation.
1. Solver tries to put every symbol from alphabet(specific to this place) to undefined position in initialised combination
2. Runs replace - to simplify alphabets affected by this new value
3. * If combination is valid - go to step 1
   * If combination is invalid(fail early) - backtrack

To run the solver for problem p:
``` haskell
solve p
```

To initialise sudoku field for combination comb:
``` haskell
initialiseCombination comb
```

## Statistics
World`s hardest sudoku solved on MacBook Pro 2017 i5 2.3 GHz in:
    * 207 seconds (version 1)
    * 11.46 seconds (version 2)
