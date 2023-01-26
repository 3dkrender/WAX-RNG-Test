# RngTest 

A sample about the use of the **orng.wax** smart contract for WAX Blockchain.

```
action: getrng [name client]

Use case to generate a random number less than 100 
```

## How to Build -
   - cd to 'build' directory
   - run the command 'cmake ..'
   - run the command 'make'

## After build -
   - The built smart contract is under the 'rngtest' directory in the 'build' directory
   - You can then do a 'set contract' action with 'cleos' and point in to the './build/rngtest' directory

 - Additions to CMake should be done to the CMakeLists.txt in the './src' directory and not in the top level CMakeLists.txt