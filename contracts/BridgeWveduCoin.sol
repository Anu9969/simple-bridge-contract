// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";

contract WveduCoin is Ownable {

    constructor(address account) Ownable(msg.sender) {

    }

    function burn(address from, uint256 amount) public {
        
    }

    function withdraw(address to, uint256 amount) public {

    }

    function depositToOtherSide(address to, uint256 from) public {

    }
}