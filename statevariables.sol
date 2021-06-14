//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract statevariable {
    uint public x = 1;

    function local() external pure{
        uint a = 2;
    }
}