// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract GasOpti {
    uint256 balance = address(this).balance;

    function getBalance1() external view returns (uint256) {
        return balance;
    }

    function getBalance2() external returns (uint256) {
        return balance;
    }

    function getBalance3() public view returns (uint256) {
        return balance;
    }

    function getBalance4() public returns (uint256) {
        return balance;
    }
}

/* @script: forge inspect src/GasOpti.sol:SlotNotOpti storage --pretty */
contract SlotNotOpti {
    bytes16 a;
    bytes32 b;
    bytes8 c;
    bytes32 d;
    bytes8 e;
}

/* @script: forge inspect src/GasOpti.sol:SlotOpti storage --pretty */
contract SlotOpti {
    bytes32 b;
    bytes32 d;
    bytes16 a;
    bytes8 c;
    bytes8 e;
}
