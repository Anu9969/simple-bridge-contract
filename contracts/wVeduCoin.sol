// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/interfaces/IERC20.sol";

contract wVeduCoin is ERC20, Ownable {
    constructor() ERC20("wVeduCoin" , "wVedu") Ownable(msg.sender){

    }

    function mint(address _to, uint256 amount) public onlyOwner() {
        _mint(_to, amount);
    }

    function burn(address account, uint256 amount) public onlyOwner() {
        _burn(account, amount);
    }
}