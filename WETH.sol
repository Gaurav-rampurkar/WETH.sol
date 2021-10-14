// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract WETH is ERC20 {
    constructor() ERC20("wrapped Ether", "WETH") public {}
    
    function mint() external payable {
        _mint (msg.sender,msg.value);
    }
    // now taking the ether back
    
    function burn(uint amount ) external   {
        msg.sender.transfer(amount) ;
        _burn(msg.sender, amount);
    }
}
