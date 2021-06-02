// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol';

contract HelloWorld is ERC20, ERC20Burnable{
  constructor() ERC20("HelloWorld", "HWD") {
    _mint(msg.sender, 10000000);
  }

  function decimals() public pure override returns (uint8) {
      return 0;
  }

  function burnFrom(address account, uint256 amount) public override virtual {
      _burn(account, amount);
  }

}
