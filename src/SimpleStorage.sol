// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract  SimpleStorage{

    uint256 public myfavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    
    // Person public ani = Person ( {favoriteNumber : 7, name : "Ani"});
    Person [] public listofpeople; //array

    mapping (string => uint256) public nameToFavnumber; //Like a dictionary - maps to something

    function store ( uint256 _favoriteNumber )public{
             myfavoriteNumber = _favoriteNumber;                   
    }
     
    // view, pure
    function retrieve () public view returns(uint256) {
        return myfavoriteNumber;

    }
    
    // memory, calldata---- Temporary , storage--- Permanent which stay in contract
    function addPerson (string memory _name , uint256  _favoriteNumber) public{
         listofpeople.push (Person(_favoriteNumber, _name ));
         nameToFavnumber[_name] = _favoriteNumber; // gets number from name
    }
}