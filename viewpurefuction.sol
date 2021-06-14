//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract viewpurefunction {
    uint x = 1;

    function viewfunction() external view returns(uint){
        return x+1;
    }

    function purefunction(uint y) external pure returns(uint){
        return y;
    }
}
