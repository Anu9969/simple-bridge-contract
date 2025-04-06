// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";

contract BridgeVedu is Ownable {

    // uint256 public balances;
    address public tokenAddress;

    event Deposit(address indexed depositor, uint256 amount);

    mapping (address => uint256) public pendingBalances;

    constructor(address _tokenAddress) Ownable(msg.sender){
        tokenAddress = _tokenAddress;
    } 

    function deposit(IERC20 account, uint256 amount) public {
        require(address(account) == tokenAddress);
        require(account.allowance(msg.sender, address(this))>= amount);
        require(account.transferFrom(msg.sender, address(this), amount));
        emit Deposit(msg.sender, amount);
    }

    function withdraw(IERC20 account, uint256 amount) public {

    }

    function burnOnOtherSide(address account, uint256 amount) public {

    }
}