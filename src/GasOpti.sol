// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract GasOpti {
    uint256 balance = address(this).balance;
    uint[] public arr = [4, 5, 108, 3, 7, 1, 94, 15, 99, 34, 0, 24, 5, 4];

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

    function getSortArray1() external {}
}
