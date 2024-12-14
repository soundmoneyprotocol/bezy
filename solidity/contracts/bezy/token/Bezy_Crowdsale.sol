pragma solidity ^0.5.0;

import "@openzeppelin/upgrades/contracts/Initializable.sol";

import "@openzeppelin/contracts-ethereum-package/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract BezyCrowdsale is Initializable, Crowdsale, MintedCrowdsale {

    constructor(
        uint256 rate,            // rate, in TKNbits
        address payable wallet,  // wallet to send Ether
        IERC20 token,            // the token
        uint256 openingTime,     // opening time in unix epoch seconds
        uint256 closingTime      // closing time in unix epoch seconds
    )
        PostDeliveryCrowdsale()
        TimedCrowdsale(openingTime, closingTime)
        Crowdsale(rate, wallet, token)
        public
    {
        // nice! this Crowdsale will keep all of the tokens until the end of the crowdsale
        // and then users can `withdrawTokens()` to get the tokens they're owed
        function initialize(
            uint256 rate,    
            // rate in TKNbits
            address payable wallet,
            IERC20 token
        ) public initializer {
            Crowdsale.initialize(rate, wallet, token);
        }
    }
    }
    



