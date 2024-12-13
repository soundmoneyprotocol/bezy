// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.17;

import "@thesis/solidity-contracts/contracts/token/ERC20WithPermit.sol";
import "@thesis/solidity-contracts/contracts/token/MisfundRecovery.sol";

contract BEZY is T, ERC20WithPermit, MisfundRecovery, Initializable, ERC20, ERC20Detailed, ERC20Mintable {
    constructor() ERC20WithPermit("Bezy", "BEZY", 18) {
        _mint(msg.sender, initialSupply);
       // add totalSupply here
        _totalSupply(uint256 250000000000000000000000000000);
    }
function initialize(address minter) public initializer {
        ERC20Detailed.initialize("Bezy", "BEZY", 18);
        ERC20Mintable.initialize(minter);
    }
}
