require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/DTfyRwH0X9eVcUMqRLfMBF3BWYhUDc9J",
      accounts: [
        "d2f6f962fdfe728d51c242f8968d52351a1ddea79d579511fba5dfe0e49def4d",
      ],
    },
  },
};
