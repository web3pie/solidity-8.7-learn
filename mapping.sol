//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract Mapping {
    mapping(address=>uint) public balances;
    mapping(address=>bool) public inserted;
    address[] public keys;

    function example() external {
        balances[msg.sender] = 123;
        delete balances[msg.sender];
    }

    function insert(address _key,uint value) external{
        if(!inserted[_key]){
            inserted[_key] = true;
            balances[_key] =  value;
            keys.push(_key);
        }
    }
    function getBalance(address _key)external view returns(uint) {
        return balances[_key];
    }
    function getBalanceByIndex(uint i) external view returns(uint){
        return balances[keys[i]];
    }

}