require("@nomiclabs/hardhat-waffle");
require("dotenv").config();

module.exports = {
    networks: {
      hardhat: {
      },
      ropsten: {
        url: `https://speedy-nodes-nyc.moralis.io/${process.env.API_KEY}/eth/ropsten`,
        accounts: [`0x${process.env.PRIVATE_KEY}`],
      },
    },
    solidity: {
      version: "0.6.12",
    },
  };