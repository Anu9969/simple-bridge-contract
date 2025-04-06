// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";

interface wVedu is IERC20{
    function mint(address _to, uint256 amount) external;
    function burn(address _from, uint256 amount ) external;
}

contract WveduCoin is Ownable {

    // uint256 public balances;
    address public tokenAddress;

    event Burn(address indexed burner, uint256 amount);

    mapping (address => uint256) public pendingBalance;

    constructor(address _tokenAddress) Ownable(msg.sender) {
        tokenAddress = _tokenAddress;
    }

    

    function burn(wVedu from, uint256 _amount) public {
        require(address(from) == tokenAddress);
        from.burn(msg.sender, _amount);
        emit Burn(msg.sender, _amount);
    }

    function withdraw(wVedu to, uint256 amount) public {
        require(pendingBalance[msg.sender] >= amount);
        pendingBalance[msg.sender] -= amount;
        to.mint(msg.sender,amount);
    }

    function depositToOtherSide(address account, uint256 amount) public onlyOwner{
        pendingBalance[account] += amount;
    }
}