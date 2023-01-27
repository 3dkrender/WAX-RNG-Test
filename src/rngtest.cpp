#include <rngtest.hpp>

/*
   Generate signing_value and check if it's valid
*/
ACTION rngtest::getrnd( name& customer_id ) {
   require_auth(customer_id);

   // Read transaction_id
   size_t size = transaction_size();
   char buf[size];
   uint32_t read = read_transaction(buf, size);
   check(size == read, "Signing value generation: read_transaction() has failed.");
   checksum256 tx_id = eosio::sha256(buf, read);

   // Get first 64 bits from transaction_id
   uint64_t signing_value;
   memcpy(&signing_value, tx_id.data(), sizeof(signing_value));

   // Check if signing_value is valid...
   auto iSigningValue = orng::signvals.begin();
   uint8_t c = 0;

   while( iSigningValue != orng::signvals.end() && c < 64){
      iSigningValue = orng::signvals.find(signing_value);

      // If signing_value exists, we rotate 1 bit to modify the hash. There are 64 possible variations...
      if(iSigningValue != orng::signvals.end()){
         signing_value <<= 1;
         c++;
      }
   }

   // Ok, I don't think this will happen but... what if it does?
   check(c < 64, "No combination was valid? Inconceivable!");

   // Prepare the table where the random value will be received.
   _customers.emplace(get_self(), [&](auto& rec) {
      rec.signing_value = signing_value;
      rec.customer_id = customer_id;
   });

   // Call to orng.wax smart contract
   action(
      { get_self(), "active"_n }, 
      "orng.wax"_n,  
      "requestrand"_n, 
      std::tuple{ signing_value, signing_value, get_self() })
      .send();
}

/*
   Rnd receiver (callback function)
*/
ACTION rngtest::receiverand(uint64_t signing_value, const checksum256& random_value) {
   require_auth(ORNG_CONTRACT);

   //cast the random_value to a smaller number
   uint64_t max_value = 100;
   auto byte_array = random_value.extract_as_byte_array();

   uint8_t random_int = 0;
   random_int = byte_array[0];

   uint8_t num1 = random_int % max_value;

   auto iCustomers = _customers.require_find(signing_value, "Error: Petition not found!");

   // update table with random_value
   _customers.modify(iCustomers, get_self(), [&](auto& rec) {
      rec.random_value = random_value;
      rec.final_number = num1;
   });
}