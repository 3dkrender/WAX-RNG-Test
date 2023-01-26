#include <eosio/eosio.hpp>

#include <eosio/crypto.hpp>
#include <eosio/transaction.hpp>

#include <wax-orng-interface.hpp>

#define ORNG_CONTRACT name("orng.wax")

using namespace eosio;
using namespace std;

CONTRACT rngtest : public contract {
   public:
      using contract::contract;

      // actions available
      ACTION getrnd( name& customer_id );
      ACTION receiverand(uint64_t signing_value, const checksum256& random_value);

      //table structure
      TABLE rngcustomers_table{
         uint64_t signing_value;
         name customer_id;
         checksum256 random_value;
         uint8_t final_number; 

         uint64_t primary_key() const { return signing_value; }
      };
      //define table based on table structure
      typedef multi_index<"rngcustomers"_n, rngcustomers_table> rngcustomers_index;

      // action wrappers
      using getrnd_action = action_wrapper<"getrnd"_n, &rngtest::getrnd>;
      using receiverand_action = action_wrapper<"receiverand"_n, &rngtest::receiverand>;

      // Set table 'rngcustomers'
      rngcustomers_index _customers = rngcustomers_index(get_self(), get_self().value);
};