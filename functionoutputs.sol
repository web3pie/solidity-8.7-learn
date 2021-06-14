//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract MultipleOutputs{

    function multipleOutputs()external pure returns (bool,uint){
        return (false,1);
    }

    function namedOutputs() internal pure returns (bool b,uint x){
        b = false;
        x = 1;
    }

    function destructingAssignment() external pure  {
        (bool b, uint x) =  namedOutputs();
        (, uint _x) =  namedOutputs();
    }

}