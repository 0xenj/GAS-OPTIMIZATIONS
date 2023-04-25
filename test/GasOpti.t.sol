// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Contract.sol";

contract TestContract is Test {
    GasOpti gasOpti;

    function setUp() public {
        gasOpti = new GasOpti();
    }

    function testGetBalance1() public {
        gasOpti.getBalance1();
    }

    function testGetBalance2() public {
        gasOpti.getBalance2();
    }

    function testGetBalance3() public {
        gasOpti.getBalance3();
    }

    function testGetBalance4() public {
        gasOpti.getBalance4();
    }
}
