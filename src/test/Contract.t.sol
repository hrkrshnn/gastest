// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "ds-test/test.sol";
import "../Contract.sol";

contract ContractTest is DSTest {
    uint256[] public s_playerFunds;
    uint256 public s_totalFunds;
    Contract c;

    function setUp() public {
        c = new Contract();
    }

    function testExample() public {
        assertTrue(true);
    }

    function testa() public {
        c.a();
    }

    function testb() public {
        c.b();
    }

    function testc() public {
        c.c();
    }
}
