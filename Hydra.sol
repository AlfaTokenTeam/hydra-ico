pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Hydra is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Hydra(address _owner)  UpgradeableToken(_owner) {
    name = "Hydra";
    symbol = "HYD";
    totalSupply = 100000000000000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}