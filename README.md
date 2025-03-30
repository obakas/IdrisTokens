# IdrisToken2

## Overview
**IdrisToken2** is an ERC-20 token built on the **Ethereum blockchain** using OpenZeppelin's ERC-20 standard implementation. This contract ensures compatibility with Ethereum wallets, exchanges, and decentralized applications (dApps).

## Key Features
- **ERC-20 Standard Compliance**: Fully compatible with wallets and exchanges supporting ERC-20 tokens.
- **Fixed Initial Supply**: Minted to the deployer at contract creation.
- **Secure and Efficient**: Uses OpenZeppelin's battle-tested ERC-20 implementation.

## Technologies Used
- **Solidity 0.8.28**
- **OpenZeppelin ERC-20**

## Contract Details
- **Token Name**: OurToken
- **Token Symbol**: 01
- **Initial Supply**: Defined at deployment and minted to the deployer's address.

## How It Works
1. **Deployment**: The contract is deployed with an initial supply specified by the deployer.
2. **Minting**: The entire initial supply is minted to the deployer.
3. **Transfers**: Users can send and receive tokens using standard ERC-20 functions.

## Functions
- **constructor(uint256 initialSupply)**: Initializes the token and mints the specified initial supply to the deployer.
- **_mint(address recipient, uint256 amount)**: Called in the constructor to allocate tokens.

## Deployment
To deploy this contract, you will need:
- A Solidity development environment (Remix, Hardhat, or Foundry).
- The OpenZeppelin ERC-20 library.
- An Ethereum wallet (like MetaMask) to fund deployment.

## Security Considerations
- **No Additional Minting**: The contract does not allow minting after deployment, preventing inflation.
- **Inherited Security**: Uses OpenZeppelin's ERC-20 implementation, which includes protection against common vulnerabilities.

## Conclusion
**IdrisToken2** is a simple yet effective ERC-20 token implementation, ideal for learning and small-scale token-based applications. It provides a secure and transparent way to distribute a fixed token supply on Ethereum.

