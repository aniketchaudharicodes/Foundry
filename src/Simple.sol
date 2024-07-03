// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Dummy{
    
     struct Person{
        uint  favoriteNumber;
        string name;
    }
    
     Person [] public listOfPeople;

     function addPerson (string memory _name, uint _favoriteNumber ) public{
         listOfPeople.push(Person(_favoriteNumber, _name));
        
     }

}