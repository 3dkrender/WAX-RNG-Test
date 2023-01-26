# RngTest 

Some examples of use cases for the **orng.wax** smart contract.

```
action: test [uint64_t signing_value]

Simple use case to check if a signing-value has already been used in a request to the smart contract orng.wax
```

```
action: getrng [name client]

Use case for generating a valid signing-value from the transaction hash
```

## How to Build -
   - cd to 'build' directory
   - run the command 'cmake ..'
   - run the command 'make'

## After build -
   - The built smart contract is under the 'rngtest' directory in the 'build' directory
   - You can then do a 'set contract' action with 'cleos' and point in to the './build/rngtest' directory

 - Additions to CMake should be done to the CMakeLists.txt in the './src' directory and not in the top level CMakeLists.txt