// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/simpleVault.sol";


contract MockERC20 is ERC20 {
    constructor() ERC20("MockERC20", "mERC") {} 

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}


contract simpleVaultTest is Test {
    
    // create an instance of the mock ERC20 asset
    MockERC20 asset;
    // create an instance of the vault
    SimpleVault vault;
    // create an address
    address saoirse = address(0x1);


    function setUp() public {
        asset = new MockERC20();
        vault = new SimpleVault(asset);
        asset.mint(saoirse, 1000e18);
    }
}