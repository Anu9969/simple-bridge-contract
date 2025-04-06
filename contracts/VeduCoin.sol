// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract VeduCoin is ERC20, Ownable {

    constructor() ERC20("VeduCoin", "Vedu") Ownable(msg.sender){

    }

    function mint(address _to, uint256 amount) public onlyOwner() {
        mint(_to, amount);
    }

  
}