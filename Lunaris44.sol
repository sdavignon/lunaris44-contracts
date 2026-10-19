// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @notice Fixed-supply ERC20. Draft: not deployed or independently audited.
/// @dev No owner, proxy, mint function, tax, pause, or blacklist.
/// Entire supply goes to initialHolder; allocation/vesting is NOT implemented.
contract Lunaris44 is ERC20 {
    constructor(address initialHolder)
        ERC20("Lunaris44", "LUN44")
    {
        _mint(initialHolder, 44_000_000 * 10 ** decimals());
    }
}
