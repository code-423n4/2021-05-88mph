// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.3;

import {IMoneyMarket} from "../../moneymarkets/IMoneyMarket.sol";

interface IInterestOracle {
    function updateAndQuery() external returns (bool updated, uint256 value);

    function query() external view returns (uint256 value);

    function moneyMarket() external view returns (IMoneyMarket);
}
