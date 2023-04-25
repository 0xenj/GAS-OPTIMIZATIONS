// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract GasOpti {
    uint256 balance = address(this).balance;
    uint256 a = 10;

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

    function require1() external view {
        require(balance == 0, "Balance != 0");
    }

    function assert1() external view {
        assert(balance == 0);
    }

    function accessStorageNotOpti() external {
        uint256 b = a;
        uint256 c = a;
        uint256 d = a;
    }

    function accessStorageOpti() external {
        uint256 opti = a;
        uint256 b = opti;
        uint256 c = opti;
        uint256 d = opti;
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

contract NotImmutable {
    uint256 public a;
    uint16 public b;

    constructor(uint256 _a, uint16 _b) public {
        a = _a;
        b = _b;
    }
}

contract ImmutableOpti {
    uint256 public immutable a;
    uint16 public immutable b;

    constructor(uint256 _a, uint16 _b) public {
        a = _a;
        b = _b;
    }
}

contract EventNotOpti {
    address store;

    function notOpti() external {
        store = 0xaaC5322e456d45E7b6c452038836C5631C2AeBc0;
    }
}

contract EventOpti {
    event Store(uint256 indexed a, address indexed b);

    function opti() external {
        emit Store(1, 0xaaC5322e456d45E7b6c452038836C5631C2AeBc0);
    }
}

contract Plus {
    uint256 a = 10;

    function plus1() external {
        a += 1;
    }

    function plus2() external {
        a = a + 1;
    }

    function plus3() external {
        a++;
    }

    function plus4() external {
        ++a;
    }
}
