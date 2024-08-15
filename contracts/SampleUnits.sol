// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract SampleUnits {
    modifier betweenOneAndTwoEth() {
        require(msg.value >= 1 ether && msg.value <= 2 ether);
        _;
    }

    uint runUntilTimestamp;
    uint startTimestamp;

    constructor(uint startInDay) {
        startTimestamp = block.timestamp + (startTimestamp + (startInDay * 1 days));
        runUntilTimestamp = startTimestamp + (7 days);
    }

}