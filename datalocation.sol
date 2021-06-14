//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

// memory - use memory when you have readonly variable and dont want to modify statevariables
// storage - use storage if you want to read and modify the state variable
// calldata - use when you dont want to copy the data during function call it works more like reference

contract TestDatalocation{

    uint[] public  a;
    mapping(address=>uint) public x;
    function example() external returns(uint){
    uint[] memory _a = a;
    mapping(address=>uint) storage _x = x;
    _x[msg.sender] = 4;
    return x[msg.sender];
    }

}