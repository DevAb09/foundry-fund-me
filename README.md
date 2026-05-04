## FundMe (Foundry Edition)
A decentralized crowdfunding smart contract built with **Solidity** and **Foundry**,
using **Chainlink Price Feeds** to ensure funding meets a minimum USD value.

## Overview
FundMe allows users to send ETH to a smart contract, but only if the ETH amount meets
a minimum USD threshold. The ETH/USD conversion is handled using Chainlink price
feeds, making the contract resistant to price volatility.
The contract owner can withdraw all funds securely.

## Features
- Accept ETH funding with USD minimum check
- Real-time ETH/USD conversion via Chainlink
- Secure withdrawal mechanism for owner
- Mapping of funders and contributions
- Gas-optimized Solidity patterns
- Fully tested with Foundry

## Tech Stack- Solidity
- Foundry (Forge, Cast, Anvil)
- Chainlink Price Feeds
- Solidity Libraries

## Running Tests
```bash
forge test

## Running with verbosity
forge test -vvv
