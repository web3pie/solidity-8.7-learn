//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract ArrayShift{
    uint[] public arr ;

    function remove(uint _x) public {
        for(uint i = _x; i< arr.length - 1; i++ ){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }
    function test() public {
        arr = [1,7,8,4,5];
        remove(2);

        assert(1 == arr[0]);
        assert(7 == arr[1]); 
        assert(4 == arr[2]);
        assert(5 == arr[3]);
        assert(arr.length == 4);       

    }
}