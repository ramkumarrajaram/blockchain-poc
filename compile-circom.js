const circom = require('circom');
const fs = require('fs');

// read the circom file
const circomCode = fs.readFileSync('src/zk-circuits/circuit.circom').toString();

// compile the circom file
circom(circomCode, { /* optional options object */ }, (err, result) => {
  if (err) {
    console.error('Compilation failed:', err);
    return;
  }

  // the compiled circuit is available in the result object
  console.log('Compilation successful!');
  console.log('Compiled circuit:', result);
});