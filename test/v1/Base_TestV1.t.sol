// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {HorseStore} from "../../src/horseStoreV1/HorseStore.sol";
import {IHorseStore} from "../../src/horseStoreV1/IHorseStore.sol";
import {Test, console2} from "../../lib/forge-std/src/Test.sol";

abstract contract Base_TestV1 is Test {
    IHorseStore public horseStore;
    // string public constant horseStoreLocation = "horseStoreV1/HorseStore";
    // HorseStore public horseStore;

    // bytes yulCode = bin'5f3560e01c8063cdfead2e1460245763e026c01714601b575f80fd5b5f545f5260205ff35b602436106032576004355f55005b5f80fd'; // type(Base_TestV1).creationCode;

    function setUp() public virtual {
        horseStore = IHorseStore(address(new HorseStore()));
    }

    function testReadValue() public view {
        uint256 initialValue = horseStore.readNumberOfHorses();
        assertEq(initialValue, 0);
    }

    function testWriteValue(uint256 numberOfHorses) public {
        horseStore.updateHorseNumber(numberOfHorses);
        assertEq(horseStore.readNumberOfHorses(), numberOfHorses);
    }
}
