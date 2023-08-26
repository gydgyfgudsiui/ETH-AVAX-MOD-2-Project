// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CustomToken is ERC20 {
    address owner;

    constructor() ERC20("Moksh", "MKS") {
        owner=msg.sender;
    }

    function mintTokens(address to, uint256 amount) public  {
        require(msg.sender==owner,"Only Owner can Mint");
        _mint(to, amount);
    }

    function burnTokens(uint256 amount) public {
        if(balanceOf(msg.sender) >= amount)
        {
            _burn(msg.sender, amount);
        }
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
    if (to == address(0)) {
        return false; // Transaction failed
    }
    return super.transfer(to, amount);
}

}
