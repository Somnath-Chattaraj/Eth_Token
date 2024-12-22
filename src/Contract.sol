// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;

    constructor(uint _initialValue) ERC20("MyToken", "MTK") {
        _mint(msg.sender, _initialValue);
        owner = msg.sender;
    }
    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "only owner can mint");
        _mint(to, amount);
    }
}