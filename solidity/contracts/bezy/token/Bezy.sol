// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.17;

import "@thesis/solidity-contracts/contracts/token/ERC20WithPermit.sol";
import "@thesis/solidity-contracts/contracts/token/MisfundRecovery.sol";

contract BEZY is T, ERC20WithPermit, MisfundRecovery {
    constructor() ERC20WithPermit("bzy", "BZY") {
        _mint(msg.sender, initialSupply);
       // add totalSupply here
        _totalSupply(uint256 250000000000000000000000000);
    }
}
