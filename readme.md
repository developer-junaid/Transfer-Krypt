## Technologies

- ReactJs (Frontend)
- Solidity (To write smart contracts)
- Hardhat (To run solidity locally)
- Alchemy (To deploy smart contract on blockchain)
- Hardhat waffle (To build smart contract tests )

## Steps

1. create folders client and smart_contract
2. Setup client : (`cd client`)

- Create react app using vite `vite init@latest` and select details
- Setup tailwind (install, setup config, setup css and test)
- install dependencies

```
npm i react-icons ethers @tailwindcss/forms
```

3. Setup smart contract: (`cd smart_contract`)

- Initialize empty package.json (`npm init -y`)

4. Setup frontend (`cd client`)

- Create folder structure
- Create frontend with styling

5. Setup Blockchain part (Smart contracts) `cd smart_contract`

- Install dependencies

```
npm i --save-dev hardhat @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers
```

- Setup hardhat
- - `npx hardhat`
- - select "create a basic sample project"
- - click enter (while asking for root)
- - type "y" while asking for gitignore
- - Run hardhat tests `npx hardhat test`

- Delete `Greetings.sol`
- Create solidity file `Transactions.sol`
- Write smart contract to store and emit transaction

- Deploy contract in the script
- Get free test eth in the account using [Ropsen Testnet faucet](https://faucet.egorfine.com/)
- Signup to [Alchemy](https://www.alchemy.com/), create app and get the _"HTTP key"_

- setup hardhat config `hardhat.config.js`
- - Specify solidity version
- - specify networks and funding account

- Deploy Smart Contract

```
npx hardhat run scripts/deploy.js --network ropsten
```

- - Get the deployed contract address
- - Go to client
- - Create clients/src/utils/constants.js
- - store address in the file

- - Copy smart_contract/artifacts/contracts/Transactions.sol/Transactions.json file and paste it in client/src/utils/Transactions.json

- - Import it and export abi from utils/constants

6. Interacting from Frontend to Smart Contract

- Create context for the logic
- Connect context
- Write logic for checking wallet is already connected or not
- Setup connect wallet feature
- Setup sendTransaction feature
- Setup AddToBlockchain feature
