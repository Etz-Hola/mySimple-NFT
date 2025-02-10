# HOLANFT Smart Contract

## Overview
HOLANFT is an ERC-721 compliant smart contract that allows users to mint unique non-fungible tokens (NFTs) on the Ethereum blockchain. Each NFT is represented with an on-chain SVG image encoded in Base64 and includes metadata such as a name and description.

## Features
- Implements ERC-721 standard using OpenZeppelin libraries.
- Generates on-chain SVG-based NFTs without relying on external storage.
- Provides a `mint` function to create new NFTs.
- Uses Base64 encoding to store metadata directly on-chain.

## Smart Contract Details
- **Contract Name:** MyNFT
- **Token Name:** HOLANFT
- **Symbol:** HLA
- **Solidity Version:** 0.8.28
- **License:** UNLICENSED

## Functions
### `mint(address _to) external`
Mints a new NFT to the specified address. Each NFT gets a unique ID, starting from 1 and incrementing with each minting.

### `tokenURI(uint256 tokenId) public pure override returns (string memory)`
Generates and returns the metadata URI for a given NFT. The metadata includes:
- **Name:** HOLANFT #ID
- **Description:** "This is my NFT and my name is Hola-Pow"
- **Image:** Base64-encoded SVG rendering of the NFT

## How It Works
1. Deploy the contract to an Ethereum-compatible blockchain.
2. Call the `mint` function with a recipient's address to mint a new NFT.
3. Retrieve metadata by calling `tokenURI` with a valid token ID.

## Dependencies
This contract utilizes OpenZeppelin's ERC-721 implementation and utility libraries:
- `@openzeppelin/contracts/token/ERC721/ERC721.sol`
- `@openzeppelin/contracts/utils/Base64.sol`
- `@openzeppelin/contracts/utils/Strings.sol`

## Getting Started
### Prerequisites
Ensure you have the following installed:
- Node.js & npm
- Hardhat
- Solidity Compiler (v0.8.28)

### Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/Etz-Hola/mySimple-NFT.git
   cd MyNFT
   ```
2. Install dependencies:
   ```sh
   npm install
   ```

### Deployment
Deploy the contract using Hardhat:
```sh
npx hardhat run scripts/deploy.js --network your-network
```

### Testing
Run tests using Hardhat:
```sh
npx hardhat test
```

## License
This project is licensed as UNLICENSED. Modify as per your requirements.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Contact
For inquiries or support, reach out to [your-email@example.com](mailto:your-email@example.com).

