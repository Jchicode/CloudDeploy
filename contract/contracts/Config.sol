//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./interface/IAccessControl.sol";

contract Config {

  address public ACCESS_CONTROL = 0x2E5D5a169AD52Ac45B37E5cA74155D7b725eB70D;

  modifier onlyBeGrant(string memory publicKey) {
    require(IAccessControl(ACCESS_CONTROL).roleCheck(publicKey, msg.sender), "Not authorized by the account owner");
    _;
  }

}
