// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {DeployIdrisToken2} from "script/DeployIdrisToken2.s.sol";
import {IdrisToken2} from "src/IdrisToken2.sol";

contract IdrisToken2Test is Test{
    IdrisToken2 public idrisToken;
    DeployIdrisToken2 public deployer;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    uint256 public constant STARTING_BALANCE = 100 ether;

    function setUp() public {
        deployer = new DeployIdrisToken2();
        idrisToken = deployer.run();

        vm.prank(msg.sender);
        idrisToken.transfer(bob, STARTING_BALANCE);
    }

    function testBobBalance() public view {
        assertEq(STARTING_BALANCE, idrisToken.balanceOf(bob));
    }

    function testAllowances() public {
        uint256 initialAllowance = 1000;
        vm.prank(bob);
        idrisToken.approve(alice, initialAllowance);

        uint256 transferAmount = 500;

        vm.prank(alice);
        idrisToken.transferFrom(bob, alice, transferAmount);

        assertEq(idrisToken.balanceOf(alice), transferAmount);
        assertEq(idrisToken.balanceOf(bob), STARTING_BALANCE - transferAmount);
    }
}