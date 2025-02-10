// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract MyNFT is ERC721 {
    uint256 private NFTIdCounter;

    constructor() ERC721("HOLANFT", "HLA")  {}

    function mint(address _to) external {
        NFTIdCounter++;
        _mint(_to, NFTIdCounter);
    }

    function tokenURI(uint256 tokenId) public pure override returns (string memory) {
        // SVG image stored as a string
        string memory svg = string(
            abi.encodePacked(
                '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200">',
                '<rect width="100%" height="100%" fill="blue"/>',
                '<text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" font-size="24" fill="white">',
                Strings.toString(tokenId),
                "</text>HOLA</svg>"
            )
        );

        // Encode SVG in Base64
        string memory svgBase64 = string(
            abi.encodePacked("data:image/svg+xml;base64,", Base64.encode(bytes(svg)))
        );

        // Construct JSON metadata
        string memory json = string(
            abi.encodePacked(
                '{"name": "HOLANFT #',
                Strings.toString(tokenId),
                '", "description": "This is my NFT and my name is Hola-Pow", "image": "',
                svgBase64,
                '"}'
            )
        );

        // Encode JSON metadata in Base64
        return string(abi.encodePacked("data:application/json;base64,", Base64.encode(bytes(json))));
    }
}
