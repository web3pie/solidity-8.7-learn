//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract forandwhile{
    function forloop() external pure returns(uint){
        uint s = 0;
        for(uint i =0; i<1000;i++){
            s+=i;
        }
        return s;
    }
    function whileloop(uint n) external pure returns(uint){
        uint s = 0;
        uint i = 0;
        while(i<n){
            s+=i;
            i++;
        }
        return s;
    }
}