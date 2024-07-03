// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;


contract Example {
    struct Person {
        string name;
        uint age;
        address addr;
    }
    uint count;
    uint[ ] public storeNumber;

   function addNumber ( uint num) public {
    storeNumber.push(num);
   } 

    Person public person;

    function setPerson(string memory _name, uint _age, address _addr) public {
        person = Person(_name, _age, _addr);
    }

    function getPerson() public view returns (string memory, uint, address) {
        return (person.name, person.age, person.addr);
    }

    function loop() public {
         for(uint i = 0; i>storeNumber.length; i++){
             count = count + 1;
         }
    }
}