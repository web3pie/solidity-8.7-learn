//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract FunctionContract {
    function add(uint256 x, uint256 y) external pure returns(uint256){
        return x+y;
    }
    function sub(uint x, uint y) external pure returns(uint){
        return x-y;
    }
}