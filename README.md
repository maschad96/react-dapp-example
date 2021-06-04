# React Dapp Example

This is a light example of using create-react-app, hardhat, and ethers to interact with a Token contract and a Greeting contract in a React UI.

## How to use

1. `git clone https://github.com/maschad96/react-dapp-example`
2. `npm install`
3. Make any changes desired to the smart contracts
4. Run `npx hardhat compile` to compile those changes down into `./src/artifacts/`
5. Run `npx hardhat node` to run an Ethereum node locally. This will provide test ETH wallets to test with locally
6. Take the private key of the wallet you intend to test with, add it to `~/.zshrc/` as `ACCOUNT_KEY="{key}"`
7. Connect your MetaMask wallet to the 'Localhost 8545' network
8. Import the test wallet used in Step 6 to your MetaMask wallet
9. Run `npx hardhat run scripts/deploy.js --network localhost` to run the deploy script. This will deploy both the Greeter and Token contracts to their own Smart Contract Addresses on localhost.
10. Take the Token Address output from the console, open up MetaMask and add the Token by inputting the address into 'Token Contract Address'. The Token Symbol should autofill.
11. Run `npm start`, starting up the React App.

This should open up an application where the greeting message in the Greeter contract can be changed, and retrieved with the Fetch Greeting message.

Additionally, the test wallet you use should receive the total supply of the token. You can send tokens from the UI by entering the test address you'd like to send tokens to, and the amount to send.
