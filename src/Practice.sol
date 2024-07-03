// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Practise{
     
   uint age;

   function setAge( uint newAge ) public {
       age = newAge;
   }
   
   uint[4] public arr = [1,2,3,4];
   uint[ ] public storeNumber;

   function addNumber ( uint num) public {
    storeNumber.push(num);
   } 


   function setter(uint index, uint value) public{
    arr[index] =  value;

   }

   function removeNumber () public{
      storeNumber.pop();
   }

//    function length() public view returns (uint arrLength, uint storeNumberLength){
//       arrLength = arr.length;
//       storeNumberLength = storeNumber.length;
//       return ( uint arrLength);
//    } 
   

//    function getAge() public view returns(uint){
//         return age;
//    }
}