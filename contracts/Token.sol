//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "hardhat/console.sol";

contract Token {
	string public name = "Matt";
	string public symbol = "MJS";
	uint public totalSupply = 100000;
	mapping(address => uint ) balances;

	constructor() {
		balances[msg.sender] = totalSupply;
	}

	function transfer(address to, uint amount) external {
		require(balances[msg.sender] >= amount, "Not Enough Tokens");
		balances[msg.sender] -= amount;
		balances[to] += amount;
	}

	function balanceOf(address account) external view returns (uint) {
		return balances[account];
	}
}