// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Test} from "forge-std/Test.sol";
import {Attack} from "../src/Attack.sol";
import {Game} from "../src/Game.sol";

contract AttackTester is Test {
    // declare a variable for holding instances of our contracts
    Game public gameContract;
    Attack public attackContract;

    // To save space, we're using bytes32 arrays
    // bytes32 usernameBytes = "test";
    // bytes32 passwordBytes = "password";

    function setUp() public {
        // Deploy the Game Contracct and send 0.1 ether to it
        gameContract = new Game{value: 0.1 ether}();
    }

    function testAttack() public {
        // Deploy the Attack Contract
        attackContract = new Attack(address(gameContract));

        // Attack the Game Contract
        attackContract.attack();

        // Balance of the Game Contract should be equal to 0
        assertEq(address(attackContract).balance, 0.1 ether);
        assertEq(gameContract.getBalance(), 0);
    }
}
