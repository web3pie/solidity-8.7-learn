//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract Array {
    uint[] public dArray = [1,2,4]; // fixed array
    uint[4] public fArray = [1,3,4]; // dynamic array

    function example() external {
        dArray.push(1); // insert to end of array
        dArray[0] = 55; // update the array at index 0
        delete dArray[1]; // reset the index 1 to 0
        dArray.pop();// removes the last element of the array
        uint length = dArray.length; // gets the length of the array


        //create array in memory
        uint[] memory a = new uint[](5);
        a[1] = 123;
        //cannot use push or pop since arrays in memory has to be fixed size
    }

    function returnArrayMemory() external view returns(uint[] memory){
        return dArray;
    }
}