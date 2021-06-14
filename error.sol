//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract ErrorContract{
    //require
    //revert
    //assert
    function requireError(uint i) external pure{
        require(i < 10,"I cannot be greater than 10");
    }

    function revertError(uint i)external pure{
        if(i < 10){
            revert("i cannot be greater than 10");
        }
    }

    uint public num = 123;
    function assertError()internal view{
        assert(num == 123);
    }
    function accedentalUpdate() external {
        num++;
        assertError();
    }

    error MyError(address,uint);
    function customError(uint i) external view{
        if(i < 10){
            revert MyError(msg.sender,i);
        }
    }
}