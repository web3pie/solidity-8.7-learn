//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract modifierTest{
    bool public paused;
    uint public count;
    function setPaused(bool status)external{
        paused =  status;
    }

    modifier whenNotPaused(){
        require(!paused,"paused");
        _;
    }

    modifier cap(uint _x){
        require(_x < 10,"gREATER than 10");
        _;
    }

    function inc(uint x) external whenNotPaused cap(x) {
        count++;
    }
     function dec(uint x) external whenNotPaused cap(x) {
        count++;
    }


}