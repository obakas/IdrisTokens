// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

import {Script} from "forge-std/Script.sol";
import {IdrisToken2} from "src/IdrisToken2.sol";

contract DeployIdrisToken2 is Script{
    uint256 public constant INITIAL_SUPLY = 1000 ether;

    function run() external {
        vm.startBroadcast();
        new IdrisToken2(INITIAL_SUPLY);
        vm.stopBroadcast();
    }
}