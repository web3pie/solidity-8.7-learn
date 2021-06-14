//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract StructByExample {
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address=>Car[]) public carsByOwner;

    function example() external  {
        //3 was to initialze struct

        Car memory toyota = Car("toyota123",1992,msg.sender);

        Car memory lambo = Car({model:"lamborgini",year:1992,owner:msg.sender});

        Car memory tesla;

        tesla.model = "tesla";
        tesla.year = 1992;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        //same as initializing memory and pushing to cars array
        cars.push(Car("ferrari",1922,msg.sender));

        //to access the first car in cars we can do 

        Car memory _car = cars[0];
        _car.model = "1";//once  this fucntion is  executed it will have no effect on statevariables

        //if we want to update the car we have to use storage

        Car storage _car_ = cars[0];
        _car_.model = "1";
        

    }
}