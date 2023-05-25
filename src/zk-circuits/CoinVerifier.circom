pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/comparators.circom";

// template Transfer() {
//   signal input sender;
//   signal input recipient;
//   signal input amount;

//   // Check if sender has sufficient balance
//   component sufficientBalance = GT();
//   sufficientBalance.in[0] <== amount;
//   sufficientBalance.in[1] <== sender;

//   // Check if recipient is in the network
//   signal input in;
//   component publicKey = PoseidonBn254([in], 6);
//   publicKey.in[0] <== recipient;

//   component isIn =  ;
//   isIn.in[0] <== publicKey.out;
//   isIn.in[1] <== 1;

//   // Final output
//   component outputs = And();
//   outputs.in[0] <== sufficientBalance.out;
//   outputs.in[1] <== isIn.out;

//   signal output out;
//   out <== outputs.out;
// }

template ZkTransfer() {
  signal input senderBalance;
  signal input amount;
  signal output balanceAvailable;

  var sufficientBalance = 0;
  component balanceComparator = GreaterEqThan(252);
  balanceComparator.in[0] <== senderBalance;
  balanceComparator.in[1] <== amount;
  balanceAvailable <== balanceComparator.out;
}

component main = ZkTransfer();