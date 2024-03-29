# 🏗 Web3 Scaffold-ETH

> everything you need to build on Ethereum! 🚀

🧪 Quickly experiment with Solidity using a frontend that adapts to your smart contract:

![image](https://user-images.githubusercontent.com/2653167/124158108-c14ca380-da56-11eb-967e-69cde37ca8eb.png)


# 🏄‍♂️ Quick Start

Prerequisites: [Node (v18 LTS)](https://nodejs.org/en/download/) plus [Yarn (v1.x)](https://classic.yarnpkg.com/en/docs/install/) and [Git](https://git-scm.com/downloads)

🚨 If you are using a version < v18 you will need to remove `openssl-legacy-provider` from the `start` script in `package.json`

> 1️⃣ clone/fork 🏗 scaffold-eth:

```bash
git clone https://github.com/einpunk-protocol-finance/einpunk-scaffold.git
```

> 2️⃣ install and start your 👷‍ Hardhat chain:

```bash
cd scaffold-eth
yarn install
yarn chain
```

> 3️⃣ in a second terminal window, start your 📱 frontend:

🚨 if your contracts are not deployed to localhost, you will need to update the default network in `App.jsx` to match your default network in `hardhat-config.js`.

```bash
cd scaffold-eth
yarn start
```

> 4️⃣ in a third terminal window, 🛰 deploy your contract:

🚨 if you are not deploying to localhost, you will need to run `yarn generate` first and then fund the deployer account. To view account balances, run `yarn account`. You will aslo need to update `hardhat-config.js` with the correct default network.

```bash
cd scaffold-eth
yarn deploy
```

🔏 Edit your smart contract `YourContract.sol` in `packages/hardhat/contracts`

📝 Edit your frontend `App.jsx` in `packages/react-app/src`

💼 Edit your deployment scripts in `packages/hardhat/deploy`

📱 Open http://localhost:3000 to see the app

🚨📡 To deploy to a public domain, use `yarn surge`. You will need to have a surge account and have the surge CLI installed. There is also the option to deploy to IPFS using `yarn ipfs` and `yarn s3` to deploy to an AWS bucket 🪣 There are scripts in the `packages/react-app/src/scripts` folder to help with this.`

# 📚 Documentation

Documentation, tutorials, challenges, and many more resources, visit: [docs.scaffoldeth.io](https://docs.scaffoldeth.io)


# 🍦 Other Flavors
- [scaffold-eth-typescript](https://github.com/einpunk-protocol-finance/einpunk-scaffold/scaffold-eth-typescript)
- [scaffold-eth-tailwind](https://github.com/einpunk-protocol-finance/einpunk-scaffold/scaffold-eth-tailwind)
- [scaffold-nextjs](https://github.com/einpunk-protocol-finance/einpunk-scaffold/scaffold-eth/tree/scaffold-nextjs)
- [scaffold-chakra](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/chakra-ui)
- [eth-hooks](https://github.com/einpunk-protocol-finance/einpunk-scaffold/eth-hooks)
- [eth-components](https://github.com/einpunk-protocol-finance/einpunk-scaffold/eth-components)
- [scaffold-eth-expo](https://github.com/einpunk-protocol-finance/einpunk-scaffold/scaffold-eth-expo)
- [scaffold-eth-truffle](https://github.com/trufflesuite/scaffold-eth)



# 🔭 Learning Solidity

📕 Read the docs: https://docs.soliditylang.org

📚 Go through each topic from [solidity by example](https://solidity-by-example.org) editing `YourContract.sol` in **🏗 scaffold-eth**

- [Primitive Data Types](https://solidity-by-example.org/primitives/)
- [Mappings](https://solidity-by-example.org/mapping/)
- [Structs](https://solidity-by-example.org/structs/)
- [Modifiers](https://solidity-by-example.org/function-modifier/)
- [Events](https://solidity-by-example.org/events/)
- [Inheritance](https://solidity-by-example.org/inheritance/)
- [Payable](https://solidity-by-example.org/payable/)
- [Fallback](https://solidity-by-example.org/fallback/)

📧 Learn the [Solidity globals and units](https://docs.soliditylang.org/en/latest/units-and-global-variables.html)

# 🛠 Buidl

Check out all the [active branches](https://github.com/scaffold-eth/scaffold-eth/branches/active), [open issues](https://github.com/scaffold-eth/scaffold-eth/issues), and join/fund the 🏰 [BuidlGuidl](https://BuidlGuidl.com)!

  
 - 🚤  [Follow the full Ethereum Speed Run](https://medium.com/@austin_48503/%EF%B8%8Fethereum-dev-speed-run-bd72bcba6a4c)


 - 🎟  [Create your first NFT](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/simple-nft-example)
 - 🥩  [Build a staking smart contract](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/challenge-1-decentralized-staking)
 - 🏵  [Deploy a token and vendor](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/challenge-2-token-vendor)
 - 🎫  [Extend the NFT example to make a "buyer mints" marketplace](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/buyer-mints-nft)
 - 🎲  [Learn about commit/reveal](https://github.com/einpunk-protocol-finance/einpunk-scaffold/scaffold-eth-examples/tree/commit-reveal-with-frontend)
 - ✍️  [Learn how ecrecover works](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/signature-recover)
 - 👩‍👩‍👧‍👧  [Build a multi-sig that uses off-chain signatures](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/meta-multi-sig)
 - ⏳  [Extend the multi-sig to stream ETH](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/streaming-meta-multi-sig)
 - ⚖️  [Learn how a simple DEX works](https://medium.com/@austin_48503/%EF%B8%8F-minimum-viable-exchange-d84f30bd0c90)
 - 🦍  [Ape into learning!](https://github.com/einpunk-protocol-finance/einpunk-scaffold/tree/aave-ape)

# 💌 P.S.

🌍 You need an RPC key for testnets and production deployments, create an [Alchemy](https://www.alchemy.com/) account and replace the value of `ALCHEMY_KEY = xxx` in `packages/react-app/src/constants.js` with your new key.

📣 Make sure you update the `InfuraID` before you go to production. Huge thanks to [Infura](https://infura.io/) for our special account that fields 7m req/day!


# 💬 Support Chat

Join the telegram [support chat 💬](https://t.me/+PY48IVqpvfxiZjBh)
---

