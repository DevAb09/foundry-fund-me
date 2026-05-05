// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {fundMe} from "../src/fundme.sol";
import {Script} from "forge-std/Script.sol";
import {HelperConfig} from "./helperconfig.s.sol";

contract DeployFundme is script {
    function deployfundme() public returns (FundMe, HelperConfig) {
        HelperConfig helperConfig = new HelperConfig();
        address pricefeed = helperConfig
            .getConfigByChainId(block.chainId)
            .pricefeed;

        vm.startBroadcast();
        FundMe fundMe = new fund(pricefeed);
        vm.stopBroadcast();
        return (fundMe, helperConfig);
    }

    function run() external returns (FundMe, HelperConfig) {
        return deployFundMe();
    }
}
