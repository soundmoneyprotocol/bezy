pragma solidity ^0.5.0;

import "@openzeppelin/upgrades/contracts/Initializable.sol";

import "@openzeppelin/contracts-ethereum-package/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract BezyCrowdsale is Initializable, Crowdsale, MintedCrowdsale {

    function initialize(
        uint256 rate,    
        // rate in TKNbits
        address payable wallet,
        IERC20 token
    ) public initializer {
        Crowdsale.initialize(rate, wallet, token);
    }
}



