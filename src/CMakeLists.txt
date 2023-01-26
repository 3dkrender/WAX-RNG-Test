project(rngtest)

set(EOSIO_WASM_OLD_BEHAVIOR "Off")
find_package(eosio.cdt)

add_contract( rngtest rngtest rngtest.cpp )
target_include_directories( rngtest PUBLIC ${CMAKE_SOURCE_DIR}/../include )
target_ricardian_directory( rngtest ${CMAKE_SOURCE_DIR}/../ricardian )