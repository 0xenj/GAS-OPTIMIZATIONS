// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/GasOpti.sol";

contract TestContract is Test {
    GasOpti gasOpti;
    SlotNotOpti slotNotOpti;
    SlotOpti slotOpti;
    NotImmutable notImmutable;
    ImmutableOpti immutableOpti;
    EventNotOpti eventNotOpti;
    EventOpti eventOpti;

    function setUp() public {
        gasOpti = new GasOpti();
        slotNotOpti = new SlotNotOpti();
        slotOpti = new SlotOpti();
        notImmutable = new NotImmutable(1, 2);
        immutableOpti = new ImmutableOpti(1, 2);
        eventNotOpti = new EventNotOpti();
        eventOpti = new EventOpti();
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

    function testVerif1() public {
        gasOpti.require1();
    }

    function testVerif2() public {
        gasOpti.assert1();
    }

    function testEventNotOpti() public {
        eventNotOpti.notOpti();
    }

    function testEventOpti() public {
        eventOpti.opti();
    }
}
