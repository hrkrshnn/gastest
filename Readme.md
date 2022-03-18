## Gas Trivia

Which among the following three functions are the cheapest?

```solidity
pragma solidity 0.8.13;

contract Contract {
    uint256[] public s_playerFunds;
    uint256 public s_totalFunds;

    constructor() {
        s_playerFunds = [1, 15, 22, 99, 234, 5, 234, 5, 2345, 234, 555, 2424, 55];
    }

    function a() public {
        uint256 totalFunds;
        for(uint256 i = 0; i < s_playerFunds.length; i++) {
            totalFunds = totalFunds + s_playerFunds[i];
        }
        s_totalFunds = totalFunds;
    }

    function b() external {
        for(uint256 i = 0; i < s_playerFunds.length; i++) {
            s_totalFunds += s_playerFunds[i];
        }
    }

    function c() public {
        uint256 totalFunds;
        uint256[] memory playerFunds = s_playerFunds;
        for(uint256 i = 0; i < playerFunds.length; i++) {
            totalFunds = totalFunds + playerFunds[i];
        }
        s_totalFunds = totalFunds;
    }
}
```

## viaIR from 0.8.13!

The Yul optimizer is able to make `a` much cheaper: https://github.com/hrkrshnn/gastest/commit/63bb419a1389163d2e4189613d1b9641df1c0c57

```
ContractTest:testa() (gas: 59879)
ContractTest:testb() (gas: 63583)
ContractTest:testc() (gas: 61615)
```
