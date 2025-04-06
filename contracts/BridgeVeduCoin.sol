// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";

contract BridgeVedu is Ownable {

    uint256 public balances;
    address public tokenAddress;

    constructor(address _tokenAddress) Ownable(msg.sender){
        tokenAddress = _tokenAddress;
    } 

    function deposit(address account, uint256 amount) public {

    }

    function withdraw(address account, uint256 amount) public {

    }

    function burnOnOtherSide(address account, uint256 amount) public {

    }
}