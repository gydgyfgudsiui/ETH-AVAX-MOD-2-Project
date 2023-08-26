# Custom ERC20 Token 

CustomToken - Ethereum ERC-20 Token Smart Contract

## Description

This project provides a Solidity smart contract for creating and managing a custom ERC-20 token on the Ethereum blockchain. The contract is named "Moksh" with the symbol "MKS." It includes functionalities for minting new tokens, burning tokens, and transferring tokens. The contract restricts token minting to the contract owner and ensures that tokens cannot be transferred to the zero address.

## Token Name and Abbreviation

**Token Name**: Moksh

**Token Abbreviation**: MKS

The token name, "Moksh," The abbreviation "MKS" serves as a shorter representation of the token name and can be used in exchanges and wallets to identify the token quickly.

## Code Overview

The CustomToken smart contract is implemented in Solidity and inherits from the OpenZeppelin ERC20 contract. Here's an overview of the key code sections:

1. **Constructor**: The constructor sets the initial token name to "Moksh" and the symbol to "MKS" during contract deployment.

2. **`mintTokens` Function**: This function allows the contract owner to mint (create) new tokens and transfer them to a specified address. It verifies that the sender is the contract owner before minting tokens.

3. **`burnTokens` Function**: Token holders can use this function to burn (destroy) their tokens. It checks if the sender has a sufficient balance of tokens before burning them. However, it doesn't handle cases where the sender tries to burn more tokens than they own; it silently fails in such cases.

4. **`transfer` Function Override**: This function overrides the `transfer` function inherited from the ERC20 contract. It adds an additional check to ensure that tokens are not transferred to the zero address (`address(0)`), which is typically used to represent burned or lost tokens.

## Getting Started

### Installing

To use this smart contract, you don't need to download any specific software. You'll need access to an Ethereum development environment, such as [Remix](https://remix.ethereum.org/), to compile and deploy the contract.

### Executing program

Follow these steps to compile and deploy the CustomToken smart contract:

1. Open your Ethereum development environment.
2. Create a new Solidity file.
3. Copy and paste the contents of the CustomToken.sol contract into the file.
4. Compile the contract using the Solidity compiler provided by your development environment.
5. Deploy the contract to an Ethereum testnet or the Ethereum mainnet, specifying the constructor parameters (name and symbol).

## Help

If you encounter any issues or have questions about using this smart contract, you can seek help in Ethereum development communities or forums. Common issues might include gas fees, contract deployment, or interactions with the contract's functions.

## Authors
- Moksh Verma
- 22BCT10059@cuchd.in

If you have questions or need assistance, please reach out to the my [EMAIL](22bct10059@cuchd.in) or  Ethereum development community for support.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
