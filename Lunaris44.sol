// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @notice Fixed-supply ERC20. Draft: not deployed or independently audited.
/// @dev No owner, proxy, mint function, tax, pause, or blacklist.
/// Entire supply goes to initialHolder; allocation/vesting is NOT implemented.
contract Lunaris44 is ERC20 {
    error InvalidSupply();
    constructor(address initialHolder, uint256 wholeTokenSupply)
        ERC20("Lunaris44", "LUN44")
    {
        if (wholeTokenSupply == 0 || wholeTokenSupply > type(uint256).max / 10 ** decimals())
            revert InvalidSupply();
        _mint(initialHolder, wholeTokenSupply * 10 ** decimals());
    }
}
