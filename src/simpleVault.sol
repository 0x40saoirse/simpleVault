// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract SimpleVault is ERC4626 {
    constructor(ERC20 asset)ERC4626(asset)ERC20("SimpleVault", "ikTKN") {}
    
    // Optional: override decimals to match the underlying asset
    // Warning: The decimals function is not standard ERC20. not every erc20 token will have this function
    function decimals() public view override returns (uint8) {
        return ERC20(address(asset())).decimals();
    }
}